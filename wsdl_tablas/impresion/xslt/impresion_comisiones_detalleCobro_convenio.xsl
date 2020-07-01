<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DetalleCobro">
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
					<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
						<fo:block >
							<xsl:template name="temp_tituloPrincipal">
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
														<!--xsl:attribute name="src">url('B:/export/_workspace/wcorpWebApp/WebContent/portalwls/productos/captaciones/cuentaprima/comisionesctaprima/img/img_logo_bci.gif')</xsl:attribute-->
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/common/images/img_logo_bci.gif')</xsl:attribute>
														</fo:external-graphic>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="14.0pt" font-weight="bold">
														<xsl:text>INFORME DE COBRO TRANSACCIONAL</xsl:text>
													</fo:block>
												</fo:table-cell>
										
											<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="14.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
						
							<xsl:template name="temp_subTituloPrincipal">
								<fo:block span="none">
									<fo:table table-layout="fixed" width="100%" padding-before="2pt">
									<fo:table-column column-width="proportional-column-width(85)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
														<xsl:text>DETALLE DE COBROS</xsl:text>
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
									<fo:table-column column-width="proportional-column-width(80)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
									<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/> 
										<fo:table-body>
											<fo:table-row>
											
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="14.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="6.0pt" font-weight="bold" >
														<xsl:text>Fecha</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="6.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <xsl:value-of disable-output-escaping="no" select="fecha"/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											
												<fo:table-row>
											
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="14.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="6.0pt" font-weight="bold" >
														<xsl:text>Hora</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="6.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <xsl:value-of disable-output-escaping="no" select="hora"/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											
											
													<fo:table-row>
											
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="14.0pt" font-weight="bold">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#0360A2" font-size="6.0pt" font-weight="bold" >
														<xsl:text>Página</xsl:text>
													</fo:block>
												</fo:table-cell>
											 	<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="6.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														: <fo:page-number/>
													</fo:block>
												</fo:table-cell>
											
											</fo:table-row>
											
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template> 

							<xsl:template name="temp_datosCliente">
								<fo:block span="none" padding-before="6pt">
										<fo:table table-layout="fixed" width="100%">
										<fo:table-column column-width="proportional-column-width(10)" background-color="#F4F4F4"/>
										<fo:table-column column-width="proportional-column-width(40)"/>
										<fo:table-column column-width="proportional-column-width(15)" background-color="#F4F4F4"/>
										<fo:table-column column-width="proportional-column-width(25)"/>
										
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
														<xsl:text disable-output-escaping="no">Rut</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="rutCliente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
														<xsl:text>Cuenta Prima</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="ctaPrima"/>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
														<xsl:text>Nombre</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="nombreCliente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
														<xsl:text>Convenio</xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="left" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="left" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:value-of disable-output-escaping="no" select="convenio"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.0pt" border-color="#DCDCDC">
													<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
														<xsl:text></xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>

				
		<!-- ***************************************************** -->
		<!--  -->
		<!--  COBROS FIJOS-->
		<!--  -->
		<!--  -->			
		<!-- ***************************************************** --> 
			<xsl:template name="temp_tituloTransacciones">
								<fo:block span="none" padding-before="5pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text>Detalles de Cobro Fijo</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
						
	<xsl:template name="temp_datosCobrosFijos">
			<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-column column-width="proportional-column-width(14)"/>
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-column column-width="proportional-column-width(12)"/>
			<fo:table-body>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3"> 
					<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="4"> 
					<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Cobro Fijo</xsl:text>
					</fo:block>
				</fo:table-cell>				
			</fo:table-row>
			
			<fo:table-row>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Convenio</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Cuenta</xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Rut</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Monto Emp.</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Estado</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Monto Per.</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Estado</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>


		<xsl:for-each select="listaCobrosFijos">		
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="codigoConvenio"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="cuenta"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="rut"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="montoFijoEmpresa"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="estadoFijoEmpresa"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="montoFijoPersona"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="estadoFijoPersona"/>
					</fo:block>
				</fo:table-cell>						
			</fo:table-row>
		</xsl:for-each>		
					 	
			<fo:table-row>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>	

			<fo:table-row>
				<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" number-columns-spanned="3" padding-left="8pt" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
						<xsl:text>NETO</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="totalNetoFijoEmpresa"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="totalNetoFijoPersona"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>

			<fo:table-row>
				<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" number-columns-spanned="3" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
						<xsl:text>IVA</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-bottom-style="solid" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="totalIvaFijoEmpresa"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-bottom-style="solid" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="totalIvaFijoPersona"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>	

			<fo:table-row>
				<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" number-columns-spanned="3" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
						<xsl:text>TOTAL</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" padding-left="8pt" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="totalFijoEmpresa"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-bottom-style="solid" border-color="#DCDCDC" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" padding-left="8pt" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="totalFijoPersona"/>
					</fo:block>
				</fo:table-cell>	
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" border-right-style="solid" >
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>			
				
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>
	
	

		<!-- ***************************************************** -->
		<!--  -->
		<!--  COBROS VARIABLES-->
		<!--  -->
		<!--  -->			
		<!-- ***************************************************** -->

			<xsl:template name="temp_tituloCobrosVariables">
								<fo:block span="none" padding-before="5pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text>Detalles de Cobro Variable</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
		
		<xsl:template name="temp_datosCobrosVariables">
			<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(9)"/>
			<fo:table-column column-width="proportional-column-width(6)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-column column-width="proportional-column-width(3)"/>
			<fo:table-body>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="9"> 
					<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="9"> 
					<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Transacciones Afectas a Cobro</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3"> 
					<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text></xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="4"> 
					<fo:block white-space-collapse="true" text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Cobro Fijo</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="2">  
					<fo:block white-space-collapse="true" text-align="center"  color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Total Tx</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">  
					<fo:block white-space-collapse="true" text-align="center"  color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Todas</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">  
					<fo:block white-space-collapse="true" text-align="center"  color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Tx. atm BCI</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">  
					<fo:block white-space-collapse="true" text-align="center"  color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Tx. atm NBCI</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			
			<fo:table-row>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Convenio</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Cuenta</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Rut</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Monto Emp.</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Estado</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Monto Per.</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Estado</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>TG</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>TC</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>G</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>C</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>A</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>G</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>C</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>A</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>G</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>C</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>A</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>


		<xsl:for-each select="listaCobrosVariables">
			<fo:table-row>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="codigoConvenio"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cuenta"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="rut"/>
						</fo:block>
					</fo:table-cell>
			
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="montoFijoEmpresa"/>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="estadoFijoEmpresa"/>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="montoFijoPersona"/>
						</fo:block>
					</fo:table-cell>
			
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="estadoFijoPersona"/>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGiros"/>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadConsultas"/>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGirosTodas"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadConsultasTodas"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGirosConsultasTodas"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGirosBci"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadConsultasBci"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGirosConsultasBci"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGirosNoBci"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadConsultasNoBci"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="cantidadGirosConsultasNoBci"/>
						</fo:block>
					</fo:table-cell>
						
				</fo:table-row>
			</xsl:for-each>		
					 	
				<fo:table-row>
					<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.0pt" border-color="#DCDCDC" padding-left="8pt">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
	
					<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.0pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
						<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				<fo:table-row>
					<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" number-columns-spanned="18" padding-left="8pt" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
					
					
				<fo:table-row>
					<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" number-columns-spanned="3" padding-left="8pt" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
							<xsl:text>NETO</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="totalNetoFijoEmpresa"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="totalNetoFijoPersona"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" number-columns-spanned="3" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
							<xsl:text>IVA</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-bottom-style="solid" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="totalIvaFijoEmpresa"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" border-bottom-style="solid" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="totalIvaFijoPersona"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>	
				
				
				<fo:table-row>
					<fo:table-cell text-align="right" display-align="before" border-left-style="solid" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" number-columns-spanned="3" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="9.0pt" font-weight="bold">
							<xsl:text>TOTAL</xsl:text>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" padding-left="8pt" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="totalFijoEmpresa"/>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-bottom-style="solid" border-color="#DCDCDC" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="8.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>

					<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" padding-left="8pt" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
							<xsl:value-of disable-output-escaping="no" select="totalFijoPersona"/>
						</fo:block>
					</fo:table-cell>
						
					<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-width="0.1pt" border-color="#DCDCDC" border-bottom-style="solid" border-right-style="solid" >
						<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
							<xsl:text></xsl:text>
						</fo:block>
					</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
		</fo:table>
		</fo:block>
	</xsl:template>
		
		
				
		<!-- ***************************************************** -->
		<!--  -->
		<!--  TRANSACCIONES-->
		<!--  -->
		<!--  -->			
		<!-- ***************************************************** --> 
			<xsl:template name="temp_tituloTransacciones">
								<fo:block span="none" padding-before="5pt">
									<fo:table table-layout="fixed" width="100%">
									<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell text-align="start" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block text-align="start" color="#000000" font-size="9.0pt" font-weight="bold">
														<xsl:text>Resumen Transacciones Afectas a Cobro</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
	
	<xsl:template name="temp_datosTransacciones">
			
			<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-column column-width="proportional-column-width(11)"/>
			<fo:table-body>
			
			<fo:table-row>
				
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Todas</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" number-columns-spanned="3">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" >
						<xsl:text>Tx. Atm BCI</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-right-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Tx. Atm NO BCI</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		
	
			<fo:table-row>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Giro</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Cons</xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Amb</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Giro</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-left-style="solid" border-top-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold" >
						<xsl:text>Cons</xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Amb</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Giro</xsl:text>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Cons</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>Amb</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		
			
	<xsl:for-each select="transacciones">
			<fo:table-row>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="giroTodas"/>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="consTodas"/>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="ambTodas"/>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="giroBci"/>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="consBci"/>
					</fo:block>
				</fo:table-cell>
				
				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="ambBci"/>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="giroNoBci"/>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="consNoBci"/>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
						<xsl:value-of disable-output-escaping="no" select="ambNoBci"/>
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
