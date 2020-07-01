<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosTalonarios">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="200mm" page-width="287mm" margin-left="10mm" margin-right="10mm" margin-top="10mm" margin-bottom="10mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="10mm" margin-right="10mm" margin-top="10mm" margin-bottom="10mm">
					<fo:region-body margin-top="3.0cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="3.0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				
				<fo:simple-page-master master-name="paginaMandato" page-height="287mm" page-width="200mm" margin-left="10mm" margin-right="10mm" margin-top="10mm" margin-bottom="10mm">
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
						<fo:block >
						
							<xsl:template name="temp_tituloDetalle">
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
														<xsl:text>Detalle del Pedido de Talonario </xsl:text>
													</fo:block>
												</fo:table-cell>
										<!-- 
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
											 -->
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
							</xsl:template> 
							

								<xsl:template name="temp_tituloDetalle">
									<fo:block span="none" padding-before="2pt">
										<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
														<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
															<xsl:text>Cliente</xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
								</xsl:template>
								<xsl:template name="temp_datosDetalle">
									<!-- GENERATE TABLE START-->
									<fo:block span="none" padding-before="6pt">
											<fo:table table-layout="fixed" width="90%">
											<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(40)"/>
											<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(25)"/>
											
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Rut</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/rut"/><xsl:text>-</xsl:text><xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/digitoVerificador"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Cuenta Corriente</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/numeroCuentaCorriente"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Nombre</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" number-columns-spanned="3" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/nombre"/>
														</fo:block>
													</fo:table-cell>
													<!-- <fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell> -->
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Direccion</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/direccion"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Numero Direccion</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/numeroDireccion"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Dpto.</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/departamento"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Telefono 1</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/telefono"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Telefono 2</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/celular"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Villa/Pobl.</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/villa"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Edificio</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/edificio"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Comuna</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/comuna"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Descripcion Comuna</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/descripcionComuna"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Ciudad</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/ciudad"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text>Descripcion Ciudad</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/descripcionCiudad"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
											</fo:table-body>
										</fo:table>
									</fo:block>
								</xsl:template>							



								<xsl:template name="temp_tituloDetallePedido">
									<fo:block span="none" padding-before="2pt">
										<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
														<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
															<xsl:text>Pedido</xsl:text>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</fo:block>
								</xsl:template>
								<xsl:template name="temp_datosDetallePedido">
									<!-- GENERATE TABLE START-->
									<fo:block span="none" padding-before="6pt">
											<fo:table table-layout="fixed" width="90%">
											<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(15)"/>
											<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(15)"/>
											<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
											<fo:table-column column-width="proportional-column-width(15)"/>
											
											<fo:table-body>
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Fecha</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/fecha"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Hora</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/hora"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Estado</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/estado"/>
														</fo:block>
													</fo:table-cell>
												</fo:table-row>
												
												<fo:table-row>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Via</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/canal"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Usuario</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/estado"/>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="7.0pt" padding-before="4pt" padding-after="2pt">
															<xsl:text disable-output-escaping="no">Rechazo</xsl:text>
														</fo:block>
													</fo:table-cell>
													<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="1.5pt" border-color="#DCDCDC" padding-left="8pt">
														<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
															<xsl:value-of disable-output-escaping="no" select="ConsultaTalonarioTO/codigoRechazo"/>
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
