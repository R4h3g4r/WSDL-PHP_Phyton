<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosActivacion">
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
                                                        <!--  <fo:external-graphic  scaling="uniform" height="60pt" width="90pt">-->
                                                        <fo:external-graphic>
                                                        <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/productos/colocaciones/tarjetadecredito/img/BCIREP.gif')</xsl:attribute>
														</fo:external-graphic>
														<fo:block  text-align="center" color="#000000" font-size="4.0pt" font-weight="bold">
															<xsl:text></xsl:text>
														</fo:block>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="12.0pt" font-weight="bold">
                                                        <xsl:text>Informe de Activación de Tarjetas de Crédito</xsl:text>                                                       
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
											
												<fo:table-cell text-align="left" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="left" color="#000000" font-size="7.0pt" font-weight="bold">
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
														<xsl:text>Listado de Resultado de Activaciones</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
											
							<xsl:template name="temp_listadoActivaciones">
								<fo:block span="none" padding-before="2pt">
								<fo:table table-layout="fixed" width="100%">
								
                                <fo:table-column column-width="proportional-column-width(10)"/>
                                <fo:table-column column-width="proportional-column-width(8)"/>
                                <fo:table-column column-width="proportional-column-width(28)"/>
                                <fo:table-column column-width="proportional-column-width(14)"/>
                                <fo:table-column column-width="proportional-column-width(40)"/>
																	
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
                                                <xsl:text>Rut Cliente</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Tipo Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Número de Tarjeta</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Resultado Activación</xsl:text>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
											<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" font-weight="bold" padding-before="2pt" padding-after="2pt">
												<xsl:text>Observación</xsl:text>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									
									<xsl:for-each select="resultadoActivacionMasiva/resultadoActivacion">
										<fo:table-row>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="rut"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="tipoTarjeta"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="nroTarjeta"/>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
                                                <xsl:if test="( activacionExitosa = 'true' )">  
                                                    <fo:external-graphic>
                                                        <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/productos/colocaciones/tarjetadecredito/img/BCIREP.gif')</xsl:attribute>
                                                    </fo:external-graphic>      
                                                    <xsl:text>Exitosa</xsl:text>                                         
                                                </xsl:if>
                                                <xsl:if test="( activacionExitosa = 'false' )">  
                                                    <fo:external-graphic>
                                                        <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/productos/colocaciones/tarjetadecredito/img/00-bullet-check-off.gif')</xsl:attribute>
                                                    </fo:external-graphic>
                                                    <xsl:text>Fallida</xsl:text>                                                  
                                                </xsl:if>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="2pt">
												<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="7.0pt" padding-before="2pt" padding-after="2pt">
													<xsl:value-of disable-output-escaping="no" select="observacion"/>
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
