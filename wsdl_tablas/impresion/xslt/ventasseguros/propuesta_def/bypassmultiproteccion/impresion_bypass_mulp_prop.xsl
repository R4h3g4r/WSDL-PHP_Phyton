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
						POLIZA DE SEGURO Nro 
						<xsl:value-of select="numeroPoliza"/>
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

					<xsl:template name="temp_tituloPrincipal">
		
						<fo:block padding-before="2pt">
			
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#000000"/>
								<fo:table-body>
									<fo:table-row>
									<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
										<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
										<xsl:text>POLIZA DE SEGURO Nro </xsl:text><xsl:value-of disable-output-escaping="no" select="numeroPoliza"/> 
										<xsl:text> - PRODUCTO </xsl:text><xsl:value-of disable-output-escaping="no" select="descripcionProducto"/> 
										</fo:block>
									</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
		
						</fo:block>
						
					</xsl:template>
					
					<xsl:template name="temp_Contratante">
						<!-- GENERATE TABLE START-->
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

					<xsl:template name="temp_tituloMateriaAsegurada">
						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%" padding-before="2pt">
							<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
											<fo:block  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
												<xsl:text>MATERIA ASEGURADA PARA EL RAMO MISCELANEOS</xsl:text>
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
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
							<fo:table-column column-width="proportional-column-width(25)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Materia Asegurada</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text disable-output-escaping="no">Tarjetas y Cheques</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:text>Nº Cuenta Corriente Asegurado</xsl:text>
										</fo:block>
									</fo:table-cell>
						
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="numeroCuentaCorriente"/>
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

							<fo:table-column column-width="proportional-column-width(10)"/>
							<fo:table-column column-width="proportional-column-width(45)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>

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
										<xsl:text>Prima Bruta Anual UF</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
										<xsl:text>Prima Bruta Mensual UF</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
					
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="codigoPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="descripcionPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaBrutaAnualPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="center" display-align="before">
										<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
											<xsl:value-of disable-output-escaping="no" select="primaBrutaMensualPlanSeleccionado"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="false"  text-align="start" color="#006666" font-size="11.0pt">
											
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

					<xsl:template name="temp_datosPrimas2">

						<fo:block span="none">
						<fo:table table-layout="fixed" width="100%" padding-before="2pt">

							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(35)"/>
							<fo:table-column column-width="proportional-column-width(20)"/>
							<fo:table-column column-width="proportional-column-width(25)"/>

							<fo:table-body>																
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
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
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before">
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
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
										<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
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


					<!-- ********************************************************************************* ***************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- **************************************************** COBERTURAS ********** ******* ***************************** -->
					<!-- ************************************************** ************************************************************* -->
					<!-- ******************************************************* ************** ************ ***************************** -->
					
					
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


					<!-- ********************************************************************************* ***************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- **************************************************** COBERTURAS SERVICIOS ******* ***************************** -->
					<!-- ************************************************** MONTOS ASEGURADOS Y CONDICIONES***************************** -->
					<!-- ******************************************************* PARTICULARES ************ ***************************** -->

					<xsl:if test="( codigoPlanSeleccionado = 'MUL1P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul1p"/>
													<xsl:call-template name="temp_texto_cobertura_mul1p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL2P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul2p"/>
													<xsl:call-template name="temp_texto_cobertura_mul2p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL3P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul3p"/>
													<xsl:call-template name="temp_texto_cobertura_mul3p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL4P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul4p"/>
													<xsl:call-template name="temp_texto_cobertura_mul4p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL5P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul5p"/>
													<xsl:call-template name="temp_texto_cobertura_mul5p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL6P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul6p"/>
													<xsl:call-template name="temp_texto_cobertura_mul6p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL7P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul7p"/>
													<xsl:call-template name="temp_texto_cobertura_mul7p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<xsl:if test="( codigoPlanSeleccionado = 'MUL8P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul8p"/>
													<xsl:call-template name="temp_texto_cobertura_mul8p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					<xsl:if test="( codigoPlanSeleccionado = 'MUL9P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul9p"/>
													<xsl:call-template name="temp_texto_cobertura_mul9p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					<xsl:if test="( codigoPlanSeleccionado = 'MUL10P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul10p"/>
													<xsl:call-template name="temp_texto_cobertura_mul10p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					<xsl:if test="( codigoPlanSeleccionado = 'MUL11P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul11p"/>
													<xsl:call-template name="temp_texto_cobertura_mul11p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>
					
					<xsl:if test="( codigoPlanSeleccionado = 'MUL12P' )">
							<fo:block padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<xsl:call-template name="temp_cabecera_cobertura_mul12p"/>
													<xsl:call-template name="temp_texto_cobertura_mul12p"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
					</xsl:if>

					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** VIGENCIA DEL SEGURO ***************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					
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
												Desde 12:01 del dia <xsl:value-of select="fechaPropuesta"/>.    Hasta las 12:00 del dia <xsl:value-of select="fechaFinPropuesta"/>.
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
					</xsl:template>	
					

					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** RESPONSABLE PAGO ******************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					
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
												<xsl:value-of disable-output-escaping="no" select="apellidoPaternoResponsable"/>
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

					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** DETALLE DE PAGO ********************************************* -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					
					
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
												<xsl:text>Dia de Pago :</xsl:text>
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

					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** FIRMAS ****************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->


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
											<xsl:call-template name="temp_datos_logos_cabecera_propuesta"/>
										</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>

					<xsl:template name="temp_tituloPrincipal">
		
						<fo:block padding-before="2pt">
			
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(100)" background-color="#000000"/>
								<fo:table-body>
								
									<fo:table-row>
									<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
										<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
										<xsl:text>PROPUESTA DE SEGUROS</xsl:text>
										</fo:block>
									</fo:table-cell>
									</fo:table-row>
																		
								</fo:table-body>
							</fo:table>
						
						</fo:block>

						<fo:block padding-before="2pt">
						
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(50)" />
								<fo:table-column column-width="proportional-column-width(45)" />
								<fo:table-column column-width="proportional-column-width(5)" />
								<fo:table-body>
								
									<fo:table-row>
										<fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
											<fo:block text-align="center" font-size="12.0pt" font-weight="bold">
											<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
											<fo:block text-align="center" font-size="12.0pt" font-weight="bold">
											<xsl:text>NRO. PROPUESTA </xsl:text><xsl:value-of select="numeroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding="2.0pt" text-align="start" display-align="before" border-width="1.0pt" border-color="#000000"  >
											<fo:block text-align="center" font-size="12.0pt" font-weight="bold">
											<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>

									</fo:table-row>
																		
								</fo:table-body>
							</fo:table>
		
						</fo:block>
						
					</xsl:template>
					
					<fo:block span="none" padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(30)" background-color="#666666"/>
						<fo:table-column column-width="proportional-column-width(70)" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
										<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
											<xsl:text>Nro POLIZA</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
										<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
											<xsl:value-of select="numeroPoliza"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block span="none" padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
										<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
											<xsl:text>Contratante</xsl:text>
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
											
							</fo:table-body>
						</fo:table>
					</fo:block>

					<fo:block span="none" padding-before="2pt">
						<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
										<fo:block text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
											<xsl:text>Materia Asegurada para el Ramo</xsl:text>
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
						<fo:table-column column-width="proportional-column-width(25)" background-color="#f0f0f0"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text disable-output-escaping="no">Materia Asegurada</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text disable-output-escaping="no">Tarjetas y Cheques</xsl:text>
									</fo:block>
								</fo:table-cell>
					
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:text>Nº Cuenta Corriente Asegurado</xsl:text>
									</fo:block>
								</fo:table-cell>
					
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="numeroCuentaCorriente"/>
									</fo:block>
								</fo:table-cell>

							</fo:table-row>
														
						</fo:table-body>
						</fo:table>
					</fo:block>

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
						
					<fo:block span="none">
					<fo:table table-layout="fixed" width="100%" padding-before="2pt">

						<fo:table-column column-width="proportional-column-width(10)"/>
						<fo:table-column column-width="proportional-column-width(45)"/>
						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>

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
									<xsl:text>Prima Bruta Anual UF</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="false"  text-align="start" color="#000066" font-size="11.0pt" background-color="#f0f0f0">
									<xsl:text>Prima Bruta Mensual UF</xsl:text>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
				
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="codigoPlanSeleccionado"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="descripcionPlanSeleccionado"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" display-align="before">
									<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="primaBrutaAnualPlanSeleccionado"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" display-align="before">
									<fo:block white-space-collapse="false"  text-align="center" color="#006666" font-size="11.0pt">
										<xsl:value-of disable-output-escaping="no" select="primaBrutaMensualPlanSeleccionado"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="false"  text-align="start" color="#006666" font-size="11.0pt">
										
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

					<fo:block span="none">
					<fo:table table-layout="fixed" width="100%" padding-before="2pt">

						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-column column-width="proportional-column-width(35)"/>
						<fo:table-column column-width="proportional-column-width(20)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>

						<fo:table-body>																
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
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
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
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
									<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
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


					<!-- ********************************************************************************* ***************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- ********************************************************************************* ***************************** -->
					<!-- **************************************************** COBERTURAS ********** ******* ***************************** -->
					<!-- ************************************************** ************************************************************* -->
					<!-- ******************************************************* ************** ************ ***************************** -->
					
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


					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** RESPONSABLE PAGO ******************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					
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
												<xsl:value-of disable-output-escaping="no" select="apellidoPaternoResponsable"/>
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

					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					<!--  **************************************** DETALLE DE PAGO ********************************************* -->
					<!--  ****************************************************************************************************** -->
					<!--  ****************************************************************************************************** -->
					
					
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
												<xsl:text>Dia de Pago :</xsl:text>
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
										<xsl:call-template name="temp_tituloMandato"/>
										<xsl:call-template name="temp_datosMandato"/>
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
										<xsl:call-template name="temp_tituloInformacion"/>
										<xsl:call-template name="temp_datosInformacion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

					<xsl:template name="temp_firmas_mandato">
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
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/firma_asegurador_bci_seg_gral.gif')</xsl:attribute> 
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
										<xsl:text>Corredora</xsl:text>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
									<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
										<fo:block>
											<xsl:text>Aseguradora</xsl:text>
										</fo:block>
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
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="58pt" width="174pt">
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
								<fo:external-graphic  scaling="uniform" height="58pt" width="174px">
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
								<xsl:value-of  select="numeroPropuesta"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="right">

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
								
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block>
								<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(57)"  />
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell background-color="#dedede">
												<fo:block text-align="center" font-size="12.0pt" font-weight="bold">
													Nro PROPUESTA
												</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell background-color="#f0f0f0">
												<fo:block text-align="center">
													<xsl:value-of select="numeroPropuesta"/>		
												</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
								</fo:table>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datos_logos_cabecera_propuesta">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="58pt" width="174pt">
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
								<fo:external-graphic  scaling="uniform" height="58pt" width="174px">
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
								<xsl:value-of  select="numeroPropuesta"/>
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

	<xsl:template name="temp_datos_logos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(40)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="58pt" width="174pt">
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
								<fo:external-graphic  scaling="uniform" height="58pt" width="174px">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
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
	
	
	<!-- ****************************************** COBERTURAS PLAN MUL1P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul1p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul1p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.19 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en un 10% de descuento </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de la prima anual.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán una prima anual de UF 1,19 + IVA, a menos que la Compañía defina cambio de condiciones</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	, en cuyo caso se avisará al asegurado por escrito con 30 días de anticipación.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 170 para las coberturas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.- FALLECIMIENTO  POR ASALTO: Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el titular haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.  MONTO ASEGURADO:  UF 1.000</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  ASISTENCIA LEGAL:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta correntistas BCI como consecuencia de robo, hurto o extravío de cédula de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. Conexión con servicio de emergencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de celulares.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al centro  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso de heridas leves como consecuencia de asalto  en la vía pública, traslado del asegurado en el medio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para protegerse </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hurtados o extraviados. Nro. de utilización por año:  ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría para la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del asegurado y teniendo en nuestro poder autorización notarial para realizar estos trámites:   Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el boletín de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportuna mente. Redacción de mandatos o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios: Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DEDUCIBLES:Asesorías: UF 3, Juicios:   UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL1P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL2P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul2p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul2p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.32 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de las 3 primeras cuotas de la prima.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,13, equivalentes a una prima anual de UF 1,32 + IVA, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado por escrito con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	30 días de anticipación. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 170 para las coberturas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.- FALLECIMIENTO  POR ASALTO: Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el titular haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.  MONTO ASEGURADO:  UF 1.000</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  ASISTENCIA LEGAL:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta correntistas BCI como consecuencia de robo, hurto o extravío de cédula de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. Conexión con servicio de emergencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de celulares.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al centro  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso de heridas leves como consecuencia de asalto  en la vía pública, traslado del asegurado en el medio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para protegerse </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hurtados o extraviados. Nro. de utilización por año:  ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría para la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del asegurado y teniendo en nuestro poder autorización notarial para realizar estos trámites:   Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el boletín de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportuna mente. Redacción de mandatos o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios: Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DEDUCIBLES:Asesorías: UF 3, Juicios:   UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL2P ***************************************** -->


	<!-- ****************************************** COBERTURAS PLAN MUL3P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul3p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul3p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.00 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en un 10% de descuento de la prima anual. "  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán una prima anual de UF 1,00 + IVA, a menos que la Compañía defina cambio de condiciones,   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en cuyo caso se avisará al asegurado por escrito con 30 días de anticipación." </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 170 para las coberturas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.- FALLECIMIENTO  POR ASALTO: Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el titular haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.  MONTO ASEGURADO:  UF 1.000</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  ASISTENCIA LEGAL:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta correntistas BCI como consecuencia de robo, hurto o extravío de cédula de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. Conexión con servicio de emergencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de celulares.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al centro  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso de heridas leves como consecuencia de asalto  en la vía pública, traslado del asegurado en el medio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para protegerse </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hurtados o extraviados. Nro. de utilización por año:  ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría para la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del asegurado y teniendo en nuestro poder autorización notarial para realizar estos trámites:   Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el boletín de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportuna mente. Redacción de mandatos o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios: Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DEDUCIBLES:Asesorías: UF 3, Juicios:   UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL3P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL4P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul4p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul4p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.21 + IVA. Sin perjuicio de ello la Compañía otorga una promoción  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago de las 3 primeras   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuotas de la prima. " </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,12, equivalentes a una prima anual de UF 1,21 + IVA,  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	por escrito con 30 días de anticipación." </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 170 para las coberturas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.- FALLECIMIENTO  POR ASALTO: Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el titular haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.  MONTO ASEGURADO:  UF 1.000</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  ASISTENCIA LEGAL:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta correntistas BCI como consecuencia de robo, hurto o extravío de cédula de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. Conexión con servicio de emergencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de celulares.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al centro  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso de heridas leves como consecuencia de asalto  en la vía pública, traslado del asegurado en el medio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para protegerse </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hurtados o extraviados. Nro. de utilización por año:  ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría para la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del asegurado y teniendo en nuestro poder autorización notarial para realizar estos trámites:   Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el boletín de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportuna mente. Redacción de mandatos o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios: Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DEDUCIBLES:Asesorías: UF 3, Juicios:   UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL4P ***************************************** -->



	<!-- ****************************************** COBERTURAS PLAN MUL5P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul5p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul5p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 48 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN: cupo autorizado nacional e internacional, con máximo de UF 20  como limite agregado anual por todas las tarjetas de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	crédito y/o débito emitidas por banco BCI para el titular. Nro. MAXIMO DE EVENTOS: 5 anuales. DEDUCIBLE:  UF 3 en toda y cada pérdida.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 10.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y con un máximo de 1 evento anual por tarjetahabiente. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 48 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.- FALLECIMIENTO  POR ASALTO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.1. Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el titular haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.  MONTO ASEGURADO:  UF 150</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  ASISTENCIA LEGAL:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta correntistas BCI como consecuencia de robo, hurto o extravío de cédula de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. Conexión con servicio de emergencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al centro  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso de heridas leves como consecuencia de asalto  en la vía pública, traslado del asegurado en el medio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para protegerse </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hurtados o extraviados. Nro. de utilización por año:  ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría para la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del asegurado y teniendo en nuestro poder autorización notarial para realizar estos trámites:   Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el boletín de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportuna mente. Redacción de mandatos o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios: Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.9.- Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.10.- Deducibles:Asesorías: UF 3, Juicios:   UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL5P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL6P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul6p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul6p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 48 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN: cupo autorizado nacional e internacional, con máximo de UF 20  como limite agregado anual por todas las tarjetas de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	crédito y/o débito emitidas por banco BCI para el titular. Nro. MAXIMO DE EVENTOS: 5 anuales. DEDUCIBLE:  UF 3 en toda y cada pérdida.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 10.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y con un máximo de 1 evento anual por tarjetahabiente. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 48 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.- FALLECIMIENTO  POR ASALTO</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.1. Cobertura de Fallecimiento por asalto (POL 1 05 003 Sección D): En caso de muerte del tarjeta habiente a consecuencia de asalto y que ocurra hasta una hora  después </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el titular haya realizado una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.  MONTO ASEGURADO:  UF 150</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  ASISTENCIA LEGAL:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuenta correntistas BCI como consecuencia de robo, hurto o extravío de cédula de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. Conexión con servicio de emergencia de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.3.-Traslado médico sanitario dentro del núcleo urbano: En caso de heridas graves como </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al centro  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En caso de heridas leves como consecuencia de asalto  en la vía pública, traslado del asegurado en el medio  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	orientación jurídica telefónica de las gestiones y/o trámites que el asegurado debe realizar para protegerse </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	hurtados o extraviados. Nro. de utilización por año:  ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	6.6.-Asistencia Administrativa (gestoría): En caso de robo de documentos, se prestará el servicio de gestoría para la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	obtención de duplicado de los documentos (padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del asegurado y teniendo en nuestro poder autorización notarial para realizar estos trámites:   Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	psicólogo quien le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el boletín de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportuna mente. Redacción de mandatos o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios: Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	delito de robo o hurto de documentos cometido en su contra.  Representación judicial del cliente en acciones de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cobranza civiles o criminales intentadas en su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.9.- Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.10.- Deducibles:Asesorías: UF 3, Juicios:   UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL6P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL7P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul7p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul7p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
					<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.58 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en un 10% de descuento </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de la prima anual.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán una prima anual de UF 1,58 + IVA, a menos que la Compañía defina cambio de condiciones</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	, en cuyo caso se avisará al asegurado por escrito con 30 días de anticipación.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	f) Compras fraudulentas por Internet</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
					<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	3.- COMPRAS FRAUDULENTAS POR INTERNET: Se cubren las pérdidas financieras directas que sufra el asegurado por motivo compras fraudulentas</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	por Internet. Exclusiones: El presente seguro no cubre las pérdidas causadas al asegurado que directa o indirectamente provengan o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	sean una consecuencia de fraudes, estafas y/o cualesquiera otro delito o simple falta penal que cuente con la participación directa o </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	indirecta del asegurado, alguno de sus ascendientes o descendientes hasta el segundo grado y/o parientes por afinidad hasta el segundo </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	grado. Se encuentra expresamente excluido cualquier caso en el que tercera persona autorizada por el Asegurado para el uso de su cuenta </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	corriente, haya tenido participación y/o beneficio directo o indirecto en el hecho constitutivo de siniestro.  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN:  UF 10 por asegurado y por evento y agregado anual. Nro. MAXIMO DE EVENTOS: 2 anuales. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	4.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	5.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 300 para las coberturas </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	6.-  FALLECIMIENTO  POR ASALTO (POL 1 05 003 Sección D): En caso de muerte del tarjetahabiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular haya realizado  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.MONTO ASEGURADO:UF 1.000</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.-  ASISTENCIA LEGAL</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuentacorrentistas BCI como consecuencia de robo, hurto o extravío de </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	cédula de identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad municipal.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de celulares.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Información de publicaciones legales a realizar.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	- Nro.  de utilización por año ilimitada.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.3.-Traslado médico sanitario dentro del núcleo urbano:En caso de heridas graves como consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al </fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	centro hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado.   En caso de heridas leves como consecuencia de  asalto  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en la vía pública, traslado del asegurado en el medio más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	7.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán orientación jurídica telefónica de las gestiones y/o trámites </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	que el asegurado debe realizar para protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, hurtados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Nro. de utilización por año ilimitada. </fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	7.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	7.6.-Asistencia Administrativa (gestoría):En caso de robo de documentos, se prestará el servicio de gestoría para la obtención de duplicado de los documentos  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	(padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	notarial para realizar estos trámites.  Límite de 2 eventos por año.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con psicólogo quien  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	7.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF. 100</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	boletín de Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportunamente.  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Redacción de mandatos o poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Juicios:  Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del delito de robo o hurto de  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	documentos cometido en su contra.  Representación judicial del cliente en acciones de  cobranza civiles o criminales intentadas en   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Deducibles: Asesorías: UF 3, Juicios:  UF 6</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
					<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
					<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL7P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL8P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul8p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul8p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.81 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de las 3 primeras cuotas de la prima.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,18, equivalentes a una prima anual de UF 1,81 + IVA, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por escrito con 30 días de anticipación.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	f) Compras fraudulentas por Internet</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
						<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	3.- COMPRAS FRAUDULENTAS POR INTERNET: Se cubren las pérdidas financieras directas que sufra el asegurado por motivo compras fraudulentas</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por Internet. Exclusiones: El presente seguro no cubre las pérdidas causadas al asegurado que directa o indirectamente provengan o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	sean una consecuencia de fraudes, estafas y/o cualesquiera otro delito o simple falta penal que cuente con la participación directa o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	indirecta del asegurado, alguno de sus ascendientes o descendientes hasta el segundo grado y/o parientes por afinidad hasta el segundo </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	grado. Se encuentra expresamente excluido cualquier caso en el que tercera persona autorizada por el Asegurado para el uso de su cuenta </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	corriente, haya tenido participación y/o beneficio directo o indirecto en el hecho constitutivo de siniestro.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN:  UF 10 por asegurado y por evento y agregado anual. Nro. MAXIMO DE EVENTOS: 2 anuales. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	4.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	5.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 300 para las coberturas </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	6.-  FALLECIMIENTO  POR ASALTO (POL 1 05 003 Sección D): En caso de muerte del tarjetahabiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular haya realizado  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.MONTO ASEGURADO:UF 1.000</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.-  ASISTENCIA LEGAL</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuentacorrentistas BCI como consecuencia de robo, hurto o extravío de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cédula de identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad municipal.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de celulares.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de publicaciones legales a realizar.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Nro.  de utilización por año ilimitada.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.3.-Traslado médico sanitario dentro del núcleo urbano:En caso de heridas graves como consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al </fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	centro hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado.   En caso de heridas leves como consecuencia de  asalto  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en la vía pública, traslado del asegurado en el medio más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del     </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán orientación jurídica telefónica de las gestiones y/o trámites </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	que el asegurado debe realizar para protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, hurtados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Nro. de utilización por año ilimitada. </fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	7.6.-Asistencia Administrativa (gestoría):En caso de robo de documentos, se prestará el servicio de gestoría para la obtención de duplicado de los documentos  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	notarial para realizar estos trámites.  Límite de 2 eventos por año.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con psicólogo quien  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF. 100</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	boletín de Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportunamente.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Redacción de mandatos o poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Juicios:  Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del delito de robo o hurto de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	documentos cometido en su contra.  Representación judicial del cliente en acciones de  cobranza civiles o criminales intentadas en   </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Deducibles: Asesorías: UF 3, Juicios:  UF 6</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL8P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL9P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul9p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul9p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.81 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de las 3 primeras cuotas de la prima.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,18, equivalentes a una prima anual de UF 1,81 + IVA, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por escrito con 30 días de anticipación.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	f) Compras fraudulentas por Internet</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
						<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	3.- COMPRAS FRAUDULENTAS POR INTERNET: Se cubren las pérdidas financieras directas que sufra el asegurado por motivo compras fraudulentas</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por Internet. Exclusiones: El presente seguro no cubre las pérdidas causadas al asegurado que directa o indirectamente provengan o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	sean una consecuencia de fraudes, estafas y/o cualesquiera otro delito o simple falta penal que cuente con la participación directa o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	indirecta del asegurado, alguno de sus ascendientes o descendientes hasta el segundo grado y/o parientes por afinidad hasta el segundo </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	grado. Se encuentra expresamente excluido cualquier caso en el que tercera persona autorizada por el Asegurado para el uso de su cuenta </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	corriente, haya tenido participación y/o beneficio directo o indirecto en el hecho constitutivo de siniestro.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN:  UF 10 por asegurado y por evento y agregado anual. Nro. MAXIMO DE EVENTOS: 2 anuales. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	4.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	5.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 300 para las coberturas </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	6.-  FALLECIMIENTO  POR ASALTO (POL 1 05 003 Sección D): En caso de muerte del tarjetahabiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular haya realizado  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.MONTO ASEGURADO:UF 1.000</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.-  ASISTENCIA LEGAL</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuentacorrentistas BCI como consecuencia de robo, hurto o extravío de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cédula de identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad municipal.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de celulares.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de publicaciones legales a realizar.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Nro.  de utilización por año ilimitada.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.3.-Traslado médico sanitario dentro del núcleo urbano:En caso de heridas graves como consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al </fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	centro hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado.   En caso de heridas leves como consecuencia de  asalto  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en la vía pública, traslado del asegurado en el medio más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del     </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán orientación jurídica telefónica de las gestiones y/o trámites </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	que el asegurado debe realizar para protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, hurtados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Nro. de utilización por año ilimitada. </fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	7.6.-Asistencia Administrativa (gestoría):En caso de robo de documentos, se prestará el servicio de gestoría para la obtención de duplicado de los documentos  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	notarial para realizar estos trámites.  Límite de 2 eventos por año.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con psicólogo quien  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF. 100</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	boletín de Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportunamente.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Redacción de mandatos o poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Juicios:  Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del delito de robo o hurto de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	documentos cometido en su contra.  Representación judicial del cliente en acciones de  cobranza civiles o criminales intentadas en   </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Deducibles: Asesorías: UF 3, Juicios:  UF 6</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL9P ***************************************** -->

	<!-- ****************************************** COBERTURAS PLAN MUL10P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul10p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul10p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.81 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de las 3 primeras cuotas de la prima.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,18, equivalentes a una prima anual de UF 1,81 + IVA, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por escrito con 30 días de anticipación.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	f) Compras fraudulentas por Internet</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
						<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	3.- COMPRAS FRAUDULENTAS POR INTERNET: Se cubren las pérdidas financieras directas que sufra el asegurado por motivo compras fraudulentas</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por Internet. Exclusiones: El presente seguro no cubre las pérdidas causadas al asegurado que directa o indirectamente provengan o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	sean una consecuencia de fraudes, estafas y/o cualesquiera otro delito o simple falta penal que cuente con la participación directa o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	indirecta del asegurado, alguno de sus ascendientes o descendientes hasta el segundo grado y/o parientes por afinidad hasta el segundo </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	grado. Se encuentra expresamente excluido cualquier caso en el que tercera persona autorizada por el Asegurado para el uso de su cuenta </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	corriente, haya tenido participación y/o beneficio directo o indirecto en el hecho constitutivo de siniestro.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN:  UF 10 por asegurado y por evento y agregado anual. Nro. MAXIMO DE EVENTOS: 2 anuales. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	4.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	5.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 300 para las coberturas </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	6.-  FALLECIMIENTO  POR ASALTO (POL 1 05 003 Sección D): En caso de muerte del tarjetahabiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular haya realizado  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.MONTO ASEGURADO:UF 1.000</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.-  ASISTENCIA LEGAL</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuentacorrentistas BCI como consecuencia de robo, hurto o extravío de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cédula de identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad municipal.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de celulares.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de publicaciones legales a realizar.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Nro.  de utilización por año ilimitada.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.3.-Traslado médico sanitario dentro del núcleo urbano:En caso de heridas graves como consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al </fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	centro hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado.   En caso de heridas leves como consecuencia de  asalto  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en la vía pública, traslado del asegurado en el medio más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del     </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán orientación jurídica telefónica de las gestiones y/o trámites </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	que el asegurado debe realizar para protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, hurtados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Nro. de utilización por año ilimitada. </fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	7.6.-Asistencia Administrativa (gestoría):En caso de robo de documentos, se prestará el servicio de gestoría para la obtención de duplicado de los documentos  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	notarial para realizar estos trámites.  Límite de 2 eventos por año.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con psicólogo quien  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF. 100</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	boletín de Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportunamente.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Redacción de mandatos o poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Juicios:  Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del delito de robo o hurto de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	documentos cometido en su contra.  Representación judicial del cliente en acciones de  cobranza civiles o criminales intentadas en   </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Deducibles: Asesorías: UF 3, Juicios:  UF 6</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL10P ***************************************** -->
	
	<!-- ****************************************** COBERTURAS PLAN MUL11P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul11p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul11p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.81 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de las 3 primeras cuotas de la prima.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,18, equivalentes a una prima anual de UF 1,81 + IVA, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por escrito con 30 días de anticipación.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	f) Compras fraudulentas por Internet</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
						<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	3.- COMPRAS FRAUDULENTAS POR INTERNET: Se cubren las pérdidas financieras directas que sufra el asegurado por motivo compras fraudulentas</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por Internet. Exclusiones: El presente seguro no cubre las pérdidas causadas al asegurado que directa o indirectamente provengan o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	sean una consecuencia de fraudes, estafas y/o cualesquiera otro delito o simple falta penal que cuente con la participación directa o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	indirecta del asegurado, alguno de sus ascendientes o descendientes hasta el segundo grado y/o parientes por afinidad hasta el segundo </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	grado. Se encuentra expresamente excluido cualquier caso en el que tercera persona autorizada por el Asegurado para el uso de su cuenta </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	corriente, haya tenido participación y/o beneficio directo o indirecto en el hecho constitutivo de siniestro.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN:  UF 10 por asegurado y por evento y agregado anual. Nro. MAXIMO DE EVENTOS: 2 anuales. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	4.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	5.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 300 para las coberturas </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	6.-  FALLECIMIENTO  POR ASALTO (POL 1 05 003 Sección D): En caso de muerte del tarjetahabiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular haya realizado  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.MONTO ASEGURADO:UF 1.000</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.-  ASISTENCIA LEGAL</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuentacorrentistas BCI como consecuencia de robo, hurto o extravío de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cédula de identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad municipal.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de celulares.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de publicaciones legales a realizar.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Nro.  de utilización por año ilimitada.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.3.-Traslado médico sanitario dentro del núcleo urbano:En caso de heridas graves como consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al </fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	centro hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado.   En caso de heridas leves como consecuencia de  asalto  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en la vía pública, traslado del asegurado en el medio más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del     </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán orientación jurídica telefónica de las gestiones y/o trámites </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	que el asegurado debe realizar para protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, hurtados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Nro. de utilización por año ilimitada. </fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	7.6.-Asistencia Administrativa (gestoría):En caso de robo de documentos, se prestará el servicio de gestoría para la obtención de duplicado de los documentos  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	notarial para realizar estos trámites.  Límite de 2 eventos por año.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con psicólogo quien  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF. 100</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	boletín de Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportunamente.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Redacción de mandatos o poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Juicios:  Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del delito de robo o hurto de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	documentos cometido en su contra.  Representación judicial del cliente en acciones de  cobranza civiles o criminales intentadas en   </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Deducibles: Asesorías: UF 3, Juicios:  UF 6</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL11P ***************************************** -->
	
	<!-- ****************************************** COBERTURAS PLAN MUL12P ***************************************** -->
	
	<xsl:template name="temp_cabecera_cobertura_mul12p">
		<!-- GENERATE TABLE START-->
		<fo:block span="none" padding-before="1pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#666666"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#dedede">
							<fo:block white-space-collapse="true"  text-align="start" color="#000066" font-size="12.0pt" font-weight="bold">
								<xsl:text>COBERTURAS, SERVICIOS, MONTOS ASEGURADOS Y CONDICIONES PARTICULARES</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_texto_cobertura_mul12p">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%" >
			<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">
						<fo:block padding-before="0pt" font-size="11.0pt">	"El valor de la prima anual para esta póliza es de UF 1.81 + IVA. Sin perjuicio de ello la Compañía otorga una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	promoción especial al asegurado para el primer año de vigencia de esta póliza, consistente en la exención de pago  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de las 3 primeras cuotas de la prima.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	En las futuras renovaciones se cobrarán 12 cuotas de UF 0,18, equivalentes a una prima anual de UF 1,81 + IVA, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a menos que la Compañía defina cambio de condiciones, en cuyo caso se avisará al asegurado</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por escrito con 30 días de anticipación.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.-  MATERIA ASEGURADA  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.1.Tarjetas de crédito y/o débito, que cuentan con las siguientes coberturas y servicios: </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento y clonación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) compra protegida</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	c) asalto en cajero</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	d) Fallecimiento por asalto</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	e) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	f) Compras fraudulentas por Internet</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	1.2.Cheques y chequeras, que cuentan con las siguientes coberturas y servicios:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	a) uso fraudulento</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	b) asistencia legal</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.-  USO FRAUDULENTO Y CLONACIÓN de tarjetas de Débito y/o crédito, cheques y chequeras:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.1.Cobertura por mal uso de tarjeta como consecuencia de robo, hurto, pérdida y/o extravío de la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	tarjeta bancaria o comercial (POL 1 05 003 sección G). Pérdidas ocasionadas como consecuencia de robo, hurto,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	pérdida y/o extravío ocurridas dentro de la 72 horas antes del momento en que se efectúo el bloqueo.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	2.2.Cobertura de falsificación y/o adulteración física de la tarjeta bancaria o comercial  (POL 1 05 003 sección H).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocurridas a consecuencia de falsificación y/o adulteración física del plástico y/o banda magnética ocurridas </fo:block>  
						<fo:block padding-before="0pt" font-size="11.0pt">	desde la primera transacción ilícita hasta la publicación en el boletín respectivo y en ningún caso se indemnizarán transacciones </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  efectuadas luego de 60 días desde la primera transacción ilícita o desde la fecha de cargo en el estado de cuenta de dicha transacción.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">  2.3.Cobertura de robo, asalto, hurto o extravío de talonarios de cheques o cheques individuales (POL 1 005 003 secciones a y b).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Pérdidas ocasionadas como consecuencia de robo, hurto, pérdida y/o extravío que se efectúen en el periodo de 72 horas previas a la </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	comunicación al banco.LIMITE DE INDEMNIZACIÓN: UF 170 en el agregado anual como límite para las coberturas: Uso fraudulento, clonación</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	y Asalto en Cajero. Nro. MAXIMO DE EVENTOS: 5 anuales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	3.- COMPRAS FRAUDULENTAS POR INTERNET: Se cubren las pérdidas financieras directas que sufra el asegurado por motivo compras fraudulentas</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	por Internet. Exclusiones: El presente seguro no cubre las pérdidas causadas al asegurado que directa o indirectamente provengan o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	sean una consecuencia de fraudes, estafas y/o cualesquiera otro delito o simple falta penal que cuente con la participación directa o </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	indirecta del asegurado, alguno de sus ascendientes o descendientes hasta el segundo grado y/o parientes por afinidad hasta el segundo </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	grado. Se encuentra expresamente excluido cualquier caso en el que tercera persona autorizada por el Asegurado para el uso de su cuenta </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	corriente, haya tenido participación y/o beneficio directo o indirecto en el hecho constitutivo de siniestro.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LIMITE DE INDEMNIZACIÓN:  UF 10 por asegurado y por evento y agregado anual. Nro. MAXIMO DE EVENTOS: 2 anuales. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	4.-  COMPRA PROTEGIDA (POL 1 05 003 sección F).  La Compañía indemnizará al asegurado, en caso de  robo  o asalto de bienes adquiridos a través</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	de tarjeta de débito y/o crédito. La garantía es válida en el mundo entero siempre que el robo, el asalto o el daño accidental tengan lugar </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	dentro  de los 10 DIAS a partir de la fecha de compra de los bienes o de la fecha de entrega de dichos bienes si ésta es posterior a la fecha de compra. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	LÍMITES DE INDEMNIZACIÓN: El límite agregado anual máximo de la indemnización a pagar es de UF 25.  La garantía sólo será de aplicación para los bienes </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cuyo precio de compra unitario sea superior a  UF 1.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	5.-  ASALTO EN CAJERO: Cobertura de utilización forzada por terceros de tarjeta bancarias o comerciales (POL 1 05 003 Sección C). Indemnización de la pérdida </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	del dinero retirado del cajero automático a consecuencia de un robo, asalto o secuestro hasta UF 11,80 por evento y un límite agregado anual de UF 300 para las coberturas </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Uso fraudulento, clonación y Asalto en Cajero. La cobertura ampara hasta 1 hora después de realizada la  transacción en el cajero. En el caso de secuestro, sólo se ampara si es  una </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	persona  con quien el asegurado no tenga una relación dentro del cuarto grado de consanguinidad y primero de afinidad y que obligue al asegurado a realizar una transacción. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	El secuestro debe involucrar el uso de un  arma  peligrosa o la  amenaza de infligir  lesión   corporal al asegurado. En caso de robo, asalto o secuestro la denuncia en Carabineros </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	debe presentarse dentro de las  2 horas posteriores al hecho y el reclamo se debe presentar a más tardar dentro de las 72 horas siguientes a la ocurrencia del hecho.Cláusula de uso general año 2000 </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(CUG 1 98 031) y Cláusula de uso general de exclusión datos electrónicos (CUG 1 02 074).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	6.-  FALLECIMIENTO  POR ASALTO (POL 1 05 003 Sección D): En caso de muerte del tarjetahabiente a consecuencia de asalto y que ocurra hasta una hora  después que el titular haya realizado  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	una operación o transacción en la red de cajeros automáticos, la compañía indemnizará el monto asegurado a los herederos legales.MONTO ASEGURADO:UF 1.000</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.-  ASISTENCIA LEGAL</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.1.Cobertura de asistencia y orientación legal (POL 1 05 003 sección J): Servicios de Asistencia a cuentacorrentistas BCI como consecuencia de robo, hurto o extravío de </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	cédula de identidad, cheques, tarjeta Redbanc y Tarjetas de crédito emitidas por el  BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.2. Servicios de Información: Entrega de información respecto a la denuncia a realizar ante Carabineros y a la Compañía de Seguros. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Conexión con servicio de emergencia de Carabineros, Investigaciones o seguridad municipal.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo inicial de cédula de identidad con Dicom.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Transbank de tarjetas  de   crédito emitidas por BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo con Redbanc de tarjetas BCI Cash.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito y débito de otros bancos.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de celulares.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información y bloqueo de tarjetas de crédito de casas comerciales (cuando la multitienda lo permita).</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones a realizar para Orden  de  no  pago  de cheques BCI.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de gestiones para bloqueo de tarjetas   de   casas comerciales.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Información de publicaciones legales a realizar.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	- Nro.  de utilización por año ilimitada.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.3.-Traslado médico sanitario dentro del núcleo urbano:En caso de heridas graves como consecuencia de asalto en la vía pública se coordinará el traslado en ambulancia al </fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	centro hospitalario más cercano o se reembolsará los costos en que incurrió el beneficiario para el traslado.   En caso de heridas leves como consecuencia de  asalto  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en la vía pública, traslado del asegurado en el medio más adecuado al centro hospitalario más cercano. En caso de asalto en la vía  pública  traslado del     </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	beneficiario hasta su domicilio  dentro del  núcleo urbano en  que  aconteció el robo o asalto.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.4.-Orientación Legal: En caso de robo, asalto o extravío, los abogados designados por la compañía entregarán orientación jurídica telefónica de las gestiones y/o trámites </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	que el asegurado debe realizar para protegerse de futuras reclamaciones judiciales y extrajudiciales en su  contra, por mal uso de sus cheques robados, hurtados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Nro. de utilización por año ilimitada. </fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	7.5.-Transmisión de mensajes urgentes asociados al evento.  Ilimitado.</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	7.6.-Asistencia Administrativa (gestoría):En caso de robo de documentos, se prestará el servicio de gestoría para la obtención de duplicado de los documentos  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	(padrón, permiso de circulación, seguro obligatorio, etc.) que no requieran de  la presencia del asegurado y teniendo en nuestro poder autorización  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	notarial para realizar estos trámites.  Límite de 2 eventos por año.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.7.- Asistencia Psicológica: Ante un robo o asalto de características traumáticas, el asegurado dispondrá de cinco sesiones con psicólogo quien  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	le otorgará una ayuda profesional inicial para superar la experiencia sufrida.  Límite de 2 eventos por año. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	La  prestación  es  otorgada  por  los  psicólogos   designados por la compañía.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	7.8.- Defensa jurídica con un máximo de 2 eventos por año y límite anual de UF. 100</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asesorías:  Negociaciones respecto de documentos extraviados, hurtados o robados que deban ser pagados. Representación  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	en caso de cobranzas extrajudiciales de documentos extraviados, hurtados o robados.  Aclaración de protestos en el  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	boletín de Informaciones Comerciales  respecto de documentos que no hubiesen sido bloqueados  oportunamente.  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Redacción de mandatos o poderes cuando se requiera para efectuar alguno de los trámites precedentemente indicados.</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Juicios:  Representación judicial del cliente en querellas  iniciadas  en contra de quienes resulten responsables del delito de robo o hurto de  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	documentos cometido en su contra.  Representación judicial del cliente en acciones de  cobranza civiles o criminales intentadas en   </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su contra fundadas  en  documentos hurtados, robados o extraviados. </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Esta Asistencia no cubre materias preexistentes o acciones contra Bancos e Instituciones Financieras.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Deducibles: Asesorías: UF 3, Juicios:  UF 6</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Territorialidad:</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Telefónica:  Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Traslado médico sanitario: Territorio Chileno</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Orientación Legal: Territorio Chileno para eventos   ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Transmisión de mensajes urgente: Todo el mundo</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	Asistencia Psicológica: Territorio Chileno para eventos  ocurridos en Chile</fo:block> 
						<fo:block padding-before="0pt" font-size="11.0pt">	Defensa Jurídica: Territorio Chileno, en eventos ocurridos en Chile.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	DERECHO DE RETRACTACION: Conforme a lo dispuesto por la Circular 1.587 de la Superintendencia de Valores y Seguros, </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	el asegurado tiene derecho a  retractarse  del presente seguro sin expresión de causa y sin costo alguno para él, si </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	su decisión la informa a la Compañía dentro del plazo  de  35  días corridos contados desde la fecha de inicio de vigencia de la póliza.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	TABLA DE TÉRMINOS CORTOS: Vencido el plazo del derecho retractación del contratante, y en caso que éste solicite la terminación </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	anticipada de la presente póliza, se restituirá  la  prima  pagada y  no  consumida en conformidad  a  la siguiente tabla:</fo:block>					
						<fo:block padding-before="0pt" font-size="11.0pt">	Por Mes o Fracción     % Sobre Prima Anual      Por Mes o Fracción     % Sobre Prima Anual</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        1                     20%						6						70%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        2                     30%						7						80%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        3                     40%						8						90%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        4                     50%						9 o más				    100%		</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">	        5                     60%														</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ****************************************** COBERTURAS PLAN MUL12P ***************************************** -->
	
	
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
							<fo:block padding-before="0pt" font-size="11.0pt">"Este seguro cubre  cheques, chequeras, tarjetas de débito y tarjetas de crédito asociadas  al titular que contrata </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">el seguro y sus adicionales,  con las coberturas, exclusiones y topes especificados en la póliza respectiva. "          </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">" Para cuentas bipersonales el seguro cubre los cheques, chequeras, tarjetas de débito y tarjetas de crédito </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">asociadas solo al titular que contrata el seguro, con las coberturas, exclusiones y topes especificados en la póliza        </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">respectiva.  En caso de querer cubrir los documentos asociados a ambos titulares se debe contratar BCI Multiprotección </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">para cada uno de los titulares".</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Responsable de Pago: Se permitirá el pago por un tercero en la medida que exista una relación </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">consanguínea directa: padre, madre, cónyuge e hijos del contratante.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CONDICIONES PARTICULARES ASOCIADAS A MODALIDAD DE PAGO            </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">De acuerdo a la Modalidad de Pago escogida y registrada por el Responsable de Pago en la Compañía, </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">aplica una de las siguientes cláusulas, según corresponda:          </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">PAC: El pago de la prima se efectuará mediante la modalidad PAC,  Autorización de Descuento en Cuenta </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Corriente Bancaria, por lo que las  condiciones del mandato que autoriza esta modalidad de pago </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">forma parte integrante de las condiciones particulares de la póliza.(Circ.1499 SVS).</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">PAT: El pago de la prima se efectuará mediante la modalidad PAT,  Autorización de Descuento en Tarjeta de crédito, por                                           </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">lo  que  las  condiciones del mandato que autoriza esta modalidad de pago forma parte integrante de las </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">condiciones particulares de la póliza. (Circ. 1499 SVS).           </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CUP: El pago de la prima se efectuará mediante la modalidad CUP.  Autorización de Pago en Estado de Cuenta Refundido, </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">por lo que las condiciones del compromiso único que autoriza esta modalidad de pago  forma  parte integrante </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de las condiciones particulares de la póliza.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">PLAN DE PAGO:Este Plan de Pago forma parte integrante de las Condiciones Particulares de la Póliza.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CLAUSULA DE USO GENERAL DE EXCLUSION POR TERRORISMO: No obstante las estipulaciones contenidas en las cláusulas adicionales de la </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">presente póliza, se  deja expresa constancia que regirá la Cláusula de Uso General de exclusión por terrorismo, inscrita en el registro de pólizas de la SVS., </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">bajo el código CUG 3 01 019. Esta exclusión será aplicable a todas los riesgos CON EXCEPCIÓN de las siguientes ocupaciones de tipo habitacional:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Casa habitación, ocupación habitual</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Casa habitación, ocupación temporal</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Departamentos, ocupación habitual</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">- Departamentos, ocupación  temporal</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CLAUSULA DE USO GENERAL DE EXCLUSION DATOS ELECTRONICOS NMA 2915: No obstante las estipulaciones contenidas en las cláusulas adicionales de la presente póliza, </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">se  deja expresa constancia que regirá la Cláusula de Uso General de  exclusión datos  electrónicos, incorporada  al depósito de pólizas de la S.V.S., </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">bajo el código CUG 1 02 074.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CLAUSULA DE USO GENERAL AÑO 2000: No obstante las estipulaciones contenidas en las cláusulas adicionales de la presente póliza, se  deja expresa constancia </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que regirá la Cláusula de Uso General año 2000, inscrita en el registro de pólizas de la S.V.S., bajo el código CUG 1 98 031.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Si el asegurado estimase que en la emisión de esta póliza se  ha incurrido en algún error o defecto, deber  devolverla de inmediato para su corrección. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Si no lo hiciese, se entender  que la acepta  Íntegramente en la forma en que ha sido emitida.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">NOTA: Se incluye Anexo relativo a Procedimiento de Liquidación de  Siniestros.     </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">MANDATO: 1) El contratante acepta que la compañía renueve automática, tácita y sucesivamente por períodos iguales el seguro a que da  origen esta propuesta, </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">salvo voluntad contraria manifestada por escrito  por el contratante, mediante carta certificada o fax dirigido a BCI  Seguros Generales S.A. o </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">a BCI Corredores de Seguros S.A., con 30 días de  anticipación a la fecha de término primitivo o de cualquiera de sus  prórrogas.  Asimismo, autoriza  a </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">BCI Corredores de Seguros S.A. para que suscriba todos los documentos  que sean necesarios para la emisión de la póliza de seguro, sus futuras  renovaciones y </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">eventuales modificaciones. 2) El contratante  faculta a BCI Seguros Generales S.A., para guardar y conservar el original  de toda y cualquier póliza de seguro </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que tenga su origen en la presente  propuesta o en el ejercicio del mandato que en este acto confiere o el de  sus endosos, si los hubiere, liberando expresamente </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">a la compañía y al  corredor, en su caso, de la obligación que contempla el artículo 549 del  Código de  Comercio.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">INFORMACIÓN SOBRE PRESENTACIÓN DE CONSULTAS Y RECLAMOS: En virtud de la Circular N° 1.487 del 17 de julio de 2000, las compañías de seguros deberán recibir, registrar y </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">responder todas las presentaciones, consultas o reclamos que se les presenten directamente por el contratante, asegurado o beneficiarios, u otros legítimos interesados, como aquellos </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">que la Superintendencia de Valores y Seguros les derive. Las presentaciones pueden ser efectuadas en la casa matriz y en todas las agencias, oficinas o sucursales de la compañía en que </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">se atienda público, personalmente, por correo o fax, sin formalidades, en el horario normal de atención y sin restricción de días u horarios especiales. El interesado, en caso de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">disconformidad respecto de lo informado por la compañía de seguros, o bien cuando exista demora injustificada en su respuesta, podrá recurrir a la Superintendencia de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Valores y Seguros, División de Atención y Educación al Asegurado, cuyas oficinas se encuentran ubicadas en Av. Libertador Bernando O?Higgiins 1449, piso 1.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">CÓDIGO DE AUTORREGULACION: BCI Seguros Generales S.A. se encuentra adherida voluntariamente al Código de Autorregulación y al Compendio de Buenas Prácticas </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de las Compañías de Seguros, cuyo propósito es propender al desarrollo del Mercado de seguros, en consonancia con los principios de libre  competencia y </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">buena fe que debe existir entre las empresas, y entre Éstas y sus clientes. Copia del Compendio de Buenas Prácticas Corporativas de las Compañías de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Seguros se encuentra a disposición de los interesados en cualquiera de las Oficinas de BCI Seguros Generales S.A. y en www.aach.cl.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt"></fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">PROCEDIMIENTO DE LIQUIDACIÓN DE SINIESTROS</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">(Circular Nº1.116 del 07.04.93 de S. V.S.)</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">1)	OBJETO DE LA LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El Proceso de Liquidación tiene por objeto básicamente determinar la ocurrencia del siniestro, si éste se encuentra amparado por la cobertura de seguro contratada </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">y, en caso afirmativo, la determinación de la indemnización a pagar.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">2)	FORMA DE EFECTUAR LA LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">La liquidación puede efectuarla directamente la Compañía o encomendarla a un Liquidador de Seguros.  La decisión debe comunicarse al Asegurado dentro </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">del plazo de tres días hábiles contados desde la fecha de la denuncia del siniestro.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">3)	DERECHO DE OPOSICIÓN A LA LIQUIDACIÓN DIRECTA</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En caso de liquidación directa por la Compañía, el Asegurado o beneficiario puede oponerse a ella, solicitándole por escrito que designe un Liquidador </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de Seguros, dentro del plazo de cinco días hábiles contados desde la comunicación de la Compañía. La Compañía deberá designar al Liquidador en </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">el plazo de tres días hábiles contados desde dicha oposición.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">4)	INFORMACIÓN AL ASEGURADO DE GESTIONES A REALIZAR Y PETICIÓN DE ANTECEDENTES</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El liquidador o la Compañía, dentro del plazo de tres días hábiles de iniciada la liquidación, deberá informar por escrito al Asegurado de </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">las gestiones que le compete realizar y de todos los antecedentes que requiere para liquidar el siniestro.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">5)	PRE-INFORME DE LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En aquellos siniestros en que surgieren problemas y diferencias de criterios sobre sus causas, evaluación del riesgo o extensión de la cobertura, </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">podrá el Liquidador, actuando de Oficio o a petición del Asegurado, emitir un pre-informe de liquidación sobre la cobertura del siniestro y el monto </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">de los daños producidos, el que deberá ponerse en conocimiento de los interesados.  El Asegurado o la Compañía podrán hacer observaciones por escrito </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">al pre-informe dentro del plazo de cinco días hábiles desde su conocimiento.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">6)	PLAZO DE LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Dentro del más breve plazo, no pudiendo exceder de:</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">a)	Seguros en general : 90 días corridos desde la fecha de denuncio;</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">b)	Seguros Vehículos Motorizados : 60 días corridos desde la fecha de denuncio;</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">c)	Seguros Marítimos Cascos o Averías Gruesas : 180 días corridos desde la fecha de denuncio.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">7)	PRÓRROGA DEL PLAZO DE LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Los plazos antes señalados podrán prorrogarse en casos fundados, sucesivamente por iguales períodos, lo que deberá comunicarse al Asegurado y a </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">la Superintendencia, pudiendo esta última dejar sin efecto la ampliación, en casos calificados, y fijar un plazo para entrega </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">del Informe de Liquidación.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">8)	INFORME FINAL DE LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">El informe final de liquidación deberá remitirse al Asegurado y simultáneamente al Asegurador, cuando corresponda, y deberá contener necesariamente </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">la transcripción íntegra de los artículos 24 al 27 el Reglamento de Auxiliares del Comercio de Seguros (D.S. de Hacienda Nº863, de 1989, </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Diario Oficial de 5 abril de 1990), relativos a la resolución de las impugnaciones formuladas y al derecho del Asegurado a recurrir </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">al procedimiento arbitral contemplado en la Póliza.</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">9)	IMPUGNACIÓN INFORME DE LIQUIDACIÓN</fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Recibido el Informe de Liquidación, la Compañía y el Asegurado dispondrán de un plazo de diez días hábiles para impugnarla.  </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">En caso de liquidación directa por la Compañía, este derecho sólo lo tendrá el Asegurado. </fo:block>
							<fo:block padding-before="0pt" font-size="11.0pt">Impugnado el informe, el Liquidador dispondrá de un plazo de cinco días hábiles para responder la impugnación.</fo:block>
							
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<!-- ****************************************** CONDICIONES PARTICULARES ***************************************** -->
	
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

						<fo:block padding-before="0pt" font-size="11.0pt">El contratante acepta que la compañía renueve  automática, tácita y sucesivamente por períodos iguales el</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">seguro a que da  origen esta propuesta, salvo voluntad contraria manifestada por escrito por el contratante,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">mediante carta certificada o fax dirigido a BCI  Seguros Generales S.A. o a BCI Corredores de Seguros S.A.,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">con 30 días de anticipación a la fecha de término primitivo o de cualquiera de sus prórrogas.  Asimismo,</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">autoriza  a BCI Corredores de Seguros S.A. para que suscriba todos los documentos  que sean necesarios para </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">la emisión de la póliza de seguro, sus futuras renovaciones y eventuales modificaciones. Faculta a BCI Seguros</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">Generales S.A., para guardar  y conservar el original de toda y cualquier póliza de seguro que tenga su origen</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">en la presente propuesta o en el ejercicio del mandato que en este  acto confiere o el de sus endosos, si  los</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">hubiere, liberando expresamente a  la compañía y al corredor, en su caso, de la obligación que contempla el  </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">artículo 549 del Código de  Comercio. 2.-  El contratante  faculta a BCI Seguros Generales S.A., para guardar y </fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">conservar el original  de toda y cualquier póliza de seguro que tenga su origen en la presente  propuesta o en el</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">ejercicio del mandato que en este acto confiere o el de  sus endosos, si los hubiere, liberando expresamente a</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">la compañía y al  corredor, en su caso, de la obligación que contempla el artículo 549 del  Código de  Comercio.</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">Todas las coberturas están sujetas a deducibles, sub límites, exclusiones y obligaciones del asegurado, las que</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">se encuentran detalladas en el condicionado general y particular de la póliza a la que dará origen la presente</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">propuesta. Se deja expresa constancia que cualquiera sea el número de pólizas contratadas y vigentes con</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">estas coberturas por el asegurable titular, los límites de indemnización y montos asegurados no serán</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">acumulables. El proponente ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">y a la libre elección del intermediario y compañía aseguradora. Todas las menciones de esta propuesta</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">formarán parte integrante de las Condiciones Particulares de la póliza. El seguro ofrecido es intermediado por</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">BCI Corredores de Seguros S.A. y la compañía que cubre el riesgo es BCI Seguros Generales S.A. Se deja</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">expresa constancia que con esta fecha el asegurado recibe conforme póliza individualizada en la presente</fo:block>
						<fo:block padding-before="0pt" font-size="11.0pt">propuesta.</fo:block>

				</fo:table-cell>

			</fo:table-row>

		</fo:table-body>

		</fo:table>

	</fo:block>

</xsl:template>

	<!-- ****************************************** INFORMACION  ***************************************** -->


<xsl:template name="temp_tituloInformacion">
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

<xsl:template name="temp_datosInformacion">

	<fo:block span="none">

		<fo:table table-layout="fixed" width="100%" >

		<fo:table-column column-width="proportional-column-width(100)" background-color="#f0f0f0"/>

		<fo:table-body>

			<fo:table-row>

				<fo:table-cell border-style="solid" border-width="1.0pt" border-color="#000000" color="#006666">

					<fo:block padding-before="0pt" font-size="11.0pt">Bci Corredores de Seguros S.A., Rut: 78.951.950-1, en mi calidad de Corredor de Seguros y en cumplimiento a la   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">ley, informo que durante el año calendario anterior intermedié contratos de seguros con las siguientes compañías </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de seguros:                                                                                                      </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">En Seguros Generales, el 73,16% en Bci Seguros Generales S.A., el 11,94% con Compañía de Seguros                 </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Generales Cardif S.A., el 3,98% con Chilena Consolidada Seguros Generales S.A., el 3,52% con Royal and Sun         </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Alliance Seguros S.A., el 1,91% con Liberty Compañía de Seguros Generales S.A., el 1,46% con Aseguradora         </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Magallanes S.A., el 1,42% con Compañía de Seguros Generales Penta-Security S.A., el 1,03% con Cia. De            </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Generales Consorcio Nacional de Seguros S.A. y otras 1,58%.  En Seguros de Vida, el 65,79% con Bci       </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Vida S.A., el 26,47% con Compañía de Seguros de Vida Cardif S.A., el 2,09 % con La Interamericana        </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Compañía de Seg de Vida S.A., el 1,47% con Bice Vida Compañía de Seguros S.A., el 1,22% con Chilena              </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Consolidada Seguros de Vida S.A., el 1,14% con MetLife Chile Seguros de Vida S.A. y otras 1,82%.  En Renta       </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Vitalicia, el 33,70% con Principal Compañía de Seguros de Vida Chile S.A., el 29,31% con MetLife Chile Seguros   </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">de Vida S.A., el 9,51% con Compañía de Seg. de Vida Consorcio Nacional de Seguros S.A., el 7,74% con             </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Euroamérica Seguros de Vida S.A., el 6,05% con Penta Vida Compañía de Seguros de Vida S.A., el 4,80% con Bci     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">Seguros Vida S.A., el 4,11% con Chilena Consolidada Seguros de Vida S.A. y otras 4,78%.  Para responder del      </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">correcto y cabal cumplimiento de todas mis obligaciones emanadas de la actividad de Corredor de Seguros y en     </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">especial, de los perjuicios que pueda ocasionar a los asegurados que contraten seguros por mi intermedio, se ha  </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">emitido Póliza de Responsabilidad  Civil  N° 483036-9 en Bci Seguros Generales S.A. y Póliza de Garantía         </fo:block>
					<fo:block padding-before="0pt" font-size="11.0pt">N°552592-6 en Bci Seguros Generales S.A.                                                                         </fo:block>
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
												: <xsl:value-of disable-output-escaping="no" select="numeroPropuesta"/>
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
													En <xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
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
												: <xsl:value-of disable-output-escaping="no" select="numeroPropuesta"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												<xsl:text>Compañía</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-left="5pt" display-align="center" border-style="solid" border-width="1.0pt" border-color="#000000">
											<fo:block white-space-collapse="true"  text-align="start" color="#006666" font-size="11.0pt">
												: <xsl:text>BCI Seguros Vida S.A.</xsl:text>
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
												<fo:block>Firma del Titular de la Cuenta Corriente</fo:block>
												<fo:block>
													En <xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
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
												: <xsl:value-of disable-output-escaping="no" select="numeroPropuesta"/>
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

