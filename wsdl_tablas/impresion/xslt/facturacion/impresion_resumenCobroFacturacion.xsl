<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosFacturacion">
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
												<xsl:text>Usuario</xsl:text>
											</fo:block>
										</fo:table-cell>
									 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												: <xsl:value-of disable-output-escaping="no" select="codigoEjecutivo"/>
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
												<xsl:text>Oficina</xsl:text>
											</fo:block>
										</fo:table-cell>
									 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
												: <xsl:value-of disable-output-escaping="no" select="codigoSucursal"/>
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
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:static-content>
				
					<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
						<fo:block>
						
							<xsl:template name="temp_titulo">
								<fo:block span="none">
									<fo:table table-layout="fixed" width="100%" padding-before="2pt">
									<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(70)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(15)" background-color="#FFFFFF"/>
									
										<fo:table-body>
											<fo:table-row>
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="11.0pt" font-weight="bold">
														<fo:external-graphic  scaling="uniform" height="60pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/productos/captaciones/cuentaprima/comisiones/img/img_logo_bci.gif')</xsl:attribute>
														<!--xsl:attribute name="src">url('B:\export\_workspace\wcorpWebApp\WebContent\portalwls\productos\servicios\pagosautomaticos\administracionpac\img\img_logo_bci.gif')</xsl:attribute-->
														</fo:external-graphic>
														<fo:block  text-align="center" color="#000000" font-size="4.0pt" font-weight="bold">
															<xsl:text>Sistema Consulta Facturación</xsl:text>
														</fo:block>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
														<xsl:text>Consulta de Productos</xsl:text>														
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
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text>Datos del Cliente</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" >
														<xsl:text>Usuario</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <xsl:value-of disable-output-escaping="no" select="codigoEjecutivo"/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											<fo:table-row>
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text>RUT: </xsl:text><xsl:value-of disable-output-escaping="no" select="rut"/>
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
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text>NOMBRES: </xsl:text><xsl:value-of disable-output-escaping="no" select="nombre"/>
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
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="7.0pt" font-weight="bold">
														<xsl:text>CONVENIO: </xsl:text><xsl:value-of disable-output-escaping="no" select="convenio"/>
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
  							
  							
  							
  							
  							<xsl:template name="temp_tituloListado">
								<fo:block span="none" padding-before="2pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text>Consulta de Producto </xsl:text><xsl:value-of disable-output-escaping="no" select="nombreProducto"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
											
							<xsl:template name="temp_listadoFacturacion">
								<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								
								<fo:table-column column-width="proportional-column-width(10)"/><!-- RUT -->
								<fo:table-column column-width="proportional-column-width(10)"/><!-- Numero Convenio -->
								<fo:table-column column-width="proportional-column-width(20)"/><!-- Producto -->
								<fo:table-column column-width="proportional-column-width(10)"/><!-- Total -->
								<fo:table-column column-width="proportional-column-width(10)"/><!-- Periodo-->
								<fo:table-column column-width="proportional-column-width(10)"/><!-- Fecha Cobro-->
								<fo:table-column column-width="proportional-column-width(10)"/><!-- Cuenta CMS -->																		
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Rut</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Nro. Convenio</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Producto</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Total</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Periodo</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Fecha Cobro</xsl:text>
											</fo:block>
										</fo:table-cell>	
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Cuenta CMS</xsl:text>
											</fo:block>
										</fo:table-cell>																																																	
									</fo:table-row>
									
									<xsl:for-each select="listaProductos/FacturaTO">
										<fo:table-row>
	
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rutCompleto"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="codigoConvenio"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nombreProducto"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="montoTotal"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="periodo"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="fechaPago"/>
												</fo:block>
											</fo:table-cell>
											
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="cuenta"/>
												</fo:block>
											</fo:table-cell>

										</fo:table-row>
									</xsl:for-each>
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
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text>Resumen Cobros (</xsl:text><xsl:value-of disable-output-escaping="no" select="nombreProducto"/><xsl:text>)</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
											
							<xsl:template name="temp_listadoResumenCobro">
								<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								
								<fo:table-column column-width="proportional-column-width(10)"/><!-- RUT -->
								<fo:table-column column-width="proportional-column-width(10)"/><!-- Numero Convenio -->
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text></xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Monto</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Cobro Variable</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="cobroVariable"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Cobro Fijo</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="cobroFijo"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Descuento</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="descuento"/>
											</fo:block>
										</fo:table-cell>	
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Iva</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="iva"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Total</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:value-of disable-output-escaping="no" select="total"/>
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
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text>Detalle Cobro Variable (</xsl:text><xsl:value-of disable-output-escaping="no" select="nombreProducto"/><xsl:text>)</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
											
							<xsl:template name="temp_listadoDetalleCobro">
								<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								
								<fo:table-column column-width="proportional-column-width(30)"/><!-- RUT -->
								<fo:table-column column-width="proportional-column-width(20)"/><!-- Numero Convenio -->
								<fo:table-column column-width="proportional-column-width(20)"/><!-- Producto -->
								<fo:table-column column-width="proportional-column-width(30)"/><!-- Total -->																
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Servicio</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Cant. Transacciones</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Monto Unitario</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Final Neto</xsl:text>
											</fo:block>
										</fo:table-cell>																																																
									</fo:table-row>
									
									<xsl:for-each select="listaDetalle/DetalleCobroFacturaTO">
										<fo:table-row>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nombreServicio"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="contadorServicio"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<!-- <xsl:value-of disable-output-escaping="no" select="montoComisionUnitaria"/>-->
													<xsl:value-of disable-output-escaping="no" select="montoComisionUnitaria"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<!-- <xsl:value-of disable-output-escaping="no" select="montoFinalNeto>"/>-->
													<xsl:value-of disable-output-escaping="no" select="montoFinalNeto"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</xsl:for-each>

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
