<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="MandatosPac">
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

						<fo:block span="none">
							<fo:table table-layout="fixed" width="100%" padding-before="2pt">
							<fo:table-column column-width="proportional-column-width(70)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
							<fo:table-column column-width="proportional-column-width(20)" background-color="#FFFFFF"/> 
								<fo:table-body>
									<fo:table-row>
									
										<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
											<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
											<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
												<xsl:text>Fecha</xsl:text>
											</fo:block>
										</fo:table-cell>
									 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												: <xsl:value-of disable-output-escaping="no" select="fecha"/>
											</fo:block>
										</fo:table-cell>
									
									</fo:table-row>
									
									<fo:table-row>
									
										<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
											<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
											<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
												<xsl:text>Hora</xsl:text>
											</fo:block>
										</fo:table-cell>
									 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												: <xsl:value-of disable-output-escaping="no" select="hora"/>
											</fo:block>
										</fo:table-cell>
									
									</fo:table-row>
									
									
									<fo:table-row>
									
										<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
											<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
											<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
												<xsl:text>Página</xsl:text>
											</fo:block>
										</fo:table-cell>
									 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												: <fo:page-number/>
											</fo:block>
										</fo:table-cell>
									
									</fo:table-row>
									
								</fo:table-body>
							</fo:table>
						</fo:block>

						<xsl:if test="( tipoBusqueda = 'rut')">

							<!-- GENERATE TABLE START-->
							<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
									<fo:table-column column-width="proportional-column-width(40)"/>
									<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
									<fo:table-column column-width="proportional-column-width(25)"/>
									
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text disable-output-escaping="no">Rut</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rutCliente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Nombre</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nombreCliente"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										
										
									</fo:table-body>
								</fo:table>
							</fo:block>

							</xsl:if>

						<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosBci' )">

							<!-- GENERATE TABLE START-->
							<fo:block span="none" padding-before="6pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
									<fo:table-column column-width="proportional-column-width(40)"/>
									<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
									<fo:table-column column-width="proportional-column-width(25)"/>
									
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text disable-output-escaping="no">Convenio</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="codigoConvenio"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text>Empresa</xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nombreEmpresa"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
												<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
													<xsl:text></xsl:text>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										
										
									</fo:table-body>
								</fo:table>
							</fo:block>

						</xsl:if>

						
					</fo:static-content>
				
					<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
						<fo:block >
						
							<xsl:template name="temp_tituloMateriaAsegurada">
								<fo:block span="none">
									<fo:table table-layout="fixed" width="100%" padding-before="2pt">
									<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(70)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
									
										<fo:table-body>
											<fo:table-row>
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="11.0pt" font-weight="bold">
														<fo:external-graphic  scaling="uniform" height="30pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/productos/captaciones/cuentaprima/comisiones/img/img_logo_bci.gif')</xsl:attribute>
														<!--<xsl:attribute name="src">url('B:\export\_workspace\wcorpWebApp\WebContent\portalwls\productos\servicios\pagosautomaticos\administracionpac\img\img_logo_bci.gif')</xsl:attribute-->
														</fo:external-graphic>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
														<xsl:text>MANDATOS </xsl:text>
														
														<xsl:if test="( tipoBusqueda = 'rut')">
															<xsl:text>BCI POR RUT</xsl:text>
														</xsl:if>
														<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosBci')">
															<xsl:text>BCI POR CONVENIO</xsl:text>
														</xsl:if>
														<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosOtrosBancos')">
															<xsl:text>OTROS BANCOS</xsl:text>
														</xsl:if>														
														
													</fo:block>
												</fo:table-cell>
										
											<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
						
	 						<xsl:template name="temp_datosHora">
								<fo:block span="none">
									<fo:table table-layout="fixed" width="100%" padding-before="2pt">
									<fo:table-column column-width="proportional-column-width(70)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(20)" background-color="#FFFFFF"/> 
										<fo:table-body>
											<fo:table-row>
											
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
														<xsl:text>Fecha</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <xsl:value-of disable-output-escaping="no" select="fecha"/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											
											<fo:table-row>
											
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
														<xsl:text>Hora</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <xsl:value-of disable-output-escaping="no" select="hora"/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											
											
											<fo:table-row>
											
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
														<xsl:text>Página</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <fo:page-number/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template> 
							
							<xsl:if test="( tipoBusqueda = 'rut')">

								<xsl:template name="temp_datosCliente">
									<!-- GENERATE TABLE START-->
									<fo:block span="none" padding-before="6pt">
											<fo:table table-layout="fixed" width="100%">
											<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(40)"/>
											<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(25)"/>
											
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Rut</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="rutCliente"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Nombre</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="nombreCliente"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												
											</fo:table-body>
										</fo:table>
									</fo:block>
								</xsl:template>
 
 							</xsl:if>

							<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosBci')">

								<xsl:template name="temp_datosConvenio">
									<!-- GENERATE TABLE START-->
									<fo:block span="none" padding-before="6pt">
											<fo:table table-layout="fixed" width="100%">
											<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(40)"/>
											<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(25)"/>
											
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Convenio</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="codigoConvenio"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Empresa</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="nombreEmpresa"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												
											</fo:table-body>
										</fo:table>
									</fo:block>
								</xsl:template>
 
 							</xsl:if>
 							
							<xsl:template name="temp_tituloListadoMandatos">
								<fo:block span="none" padding-before="2pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
							
						
							<xsl:template name="temp_detalleListadoMandatos">
								<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								
								<xsl:if test="( tipoBusqueda = 'rut')">								
								
									<fo:table-column column-width="proportional-column-width(7)"/><!-- Id convenio -->
									<fo:table-column column-width="proportional-column-width(15)"/><!-- Empresa -->
									<fo:table-column column-width="proportional-column-width(16)"/><!-- Identificador -->
									<fo:table-column column-width="proportional-column-width(9)"/><!-- Fecha autorizacion -->
									<fo:table-column column-width="proportional-column-width(9)"/><!-- Fecha anulacion -->
									<fo:table-column column-width="proportional-column-width(12)"/><!-- Cta. Cte. -->
									<fo:table-column column-width="proportional-column-width(7)"/><!-- Dia Pago -->
									<fo:table-column column-width="proportional-column-width(11)"/><!-- Monto maximo -->
									<fo:table-column column-width="proportional-column-width(14)"/><!-- Estado -->

								</xsl:if>
								
								<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosBci')">
								
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Rut cliente -->
									<fo:table-column column-width="proportional-column-width(19)"/><!-- Identificador -->
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Fecha autorizacion -->
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Fecha anulacion -->
									<fo:table-column column-width="proportional-column-width(15)"/><!-- Cta. Cte. -->
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Dia Pago -->
									<fo:table-column column-width="proportional-column-width(12)"/><!-- Monto maximo -->
									<fo:table-column column-width="proportional-column-width(14)"/><!-- Estado -->
								
								</xsl:if>
								
								<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosOtrosBancos')">
								
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Cod Banco -->
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Nº Conv -->
									<fo:table-column column-width="proportional-column-width(10)"/><!-- CCA -->
									<fo:table-column column-width="proportional-column-width(10)"/><!-- Rut empresa -->
									<fo:table-column column-width="proportional-column-width(14)"/><!-- Rut cliente -->
									<fo:table-column column-width="proportional-column-width(20)"/><!-- Identificador -->
									<fo:table-column column-width="proportional-column-width(12)"/><!-- Fecha vigencia -->
									<fo:table-column column-width="proportional-column-width(14)"/><!-- Fecha actualizacion -->
								
								</xsl:if>								
								
								<fo:table-body>
									
									<fo:table-row>
									
										<xsl:if test="( tipoMandato = 'mandatosBci')">
									
											<xsl:if test="( tipoBusqueda = 'rut')">
	
												<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
														<xsl:text>Nº Conv.</xsl:text>
													</fo:block>
												</fo:table-cell>
												
												<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
														<xsl:text>Empresa</xsl:text>
													</fo:block>
												</fo:table-cell>
	
											</xsl:if>
	
											<xsl:if test="( tipoBusqueda = 'convenio')">
	
												<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
														<xsl:text>Rut cliente</xsl:text>
													</fo:block>
												</fo:table-cell>
	
											</xsl:if>
										
										
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Identificador</xsl:text>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>F. Aut.</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>F. Anu.</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Cta. Cte.</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Día P.</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Mto. Max.</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Estado</xsl:text>
												</fo:block>
											</fo:table-cell>
											
										</xsl:if>
										
										<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosOtrosBancos')">
										
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Bco</xsl:text>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Nº Conv.</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Cod Cca</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Rut empresa</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Rut cliente</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Identificador</xsl:text>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Fecha vigencia</xsl:text>
												</fo:block>
											</fo:table-cell>										

											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
													<xsl:text>Fecha actualizacion</xsl:text>
												</fo:block>
											</fo:table-cell>										
										
										</xsl:if>
																																																		
									</fo:table-row>
									
									
									<xsl:if test="( tipoMandato = 'mandatosBci')">
									
										<xsl:for-each select="detalleMandatosPac/mandatoPac">
										<fo:table-row>
											
											<xsl:if test="( ../../tipoBusqueda = 'rut')">
														
												<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="idConvenio"/>
													</fo:block>
												</fo:table-cell>
												
												<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="nombreRazonSocial"/>
													</fo:block>
												</fo:table-cell>
											
											</xsl:if>
											
											<xsl:if test="( ../../tipoBusqueda = 'convenio')">
											
												<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
													<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="rutCliente"/>-<xsl:value-of disable-output-escaping="no" select="dvCliente"/>
													</fo:block>
												</fo:table-cell>										
											
											</xsl:if>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="identificacion"/>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaAutorizacion"/>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaAnulacion"/>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="cuentaCorriente"/>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="diaPago"/>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="montoMaximo"/>
												</fo:block>
											</fo:table-cell>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="codigoEstadoMandato"/>
													-
													<xsl:value-of disable-output-escaping="no" select="descripcionEstadoMandato"/>
												</fo:block>
											</fo:table-cell>
											
											
										</fo:table-row>
										</xsl:for-each>		
										
									</xsl:if>
									
									<xsl:if test="( tipoBusqueda = 'convenio' and tipoMandato = 'mandatosOtrosBancos')">
									
										<xsl:for-each select="mandatoPac">
										<fo:table-row>

											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="codigoBanco"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="codigoConvenio"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="cuentaCorrienteListado"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rutEmpresa"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rutClienteListado"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="numeroServicio"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaVigencia"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaActualizacion"/>
												</fo:block>
											</fo:table-cell>																																																																													

										</fo:table-row>
										</xsl:for-each>									
									
									</xsl:if>
																
									
																				
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
