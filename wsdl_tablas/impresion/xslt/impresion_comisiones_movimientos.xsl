<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="Movimientos">
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
														</fo:external-graphic>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell text-align="center" display-align="before" border-after-style="solid" border-width="0.0pt" border-color="#DCDCDC" background-color="#FFFFFF" padding="4pt" padding-left="8pt">
													<fo:block  text-align="center" color="#000000" font-size="14.0pt" font-weight="bold">
														<xsl:text>INFORME DE COBRO TRANSACCIONAL MENSUAL</xsl:text>
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
														<xsl:text>Detalle Transaccional Mensual</xsl:text>
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:block>
							</xsl:template>
						
							
	<xsl:template name="temp_datosPrimas">

			<fo:block span="none" padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			<fo:table-column column-width="proportional-column-width(25)"/>
			
			<fo:table-body>
			
			<fo:table-row>
				<fo:table-cell text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="4">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>MES = </xsl:text> <xsl:value-of disable-output-escaping="no" select="periodo"/>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
			
			<fo:table-row>
				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Fecha</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Tipo Tx</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>ATM</xsl:text>
					</fo:block>
				</fo:table-cell>

				<fo:table-cell text-align="center" display-align="before" border-top-style="solid" border-width="0.1pt" border-left-style="solid" border-right-style="solid" border-color="#DCDCDC">
					<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
						<xsl:text>Monto$</xsl:text>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>


					<xsl:for-each select="listaMovimientos">
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="fechaMovimiento"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="tipoTx"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="atm"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="monto"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
			
			<fo:table-row>
				
				<fo:table-cell text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>CANTIDAD CONSULTAS</xsl:text>
					</fo:block>
				</fo:table-cell>
						<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadConsultas"/>
							</fo:block>
						</fo:table-cell>

				</fo:table-row>
						
						
					<fo:table-row>
				
				<fo:table-cell text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>CANTIDAD GIROS</xsl:text>
					</fo:block>
				</fo:table-cell>
						<fo:table-cell text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadGiros"/>
							</fo:block>
						</fo:table-cell>

				</fo:table-row>		
						
				<fo:table-row>
				
				<fo:table-cell text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-bottom-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" number-columns-spanned="3">
					<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" font-weight="bold">
						<xsl:text>TOTAL TRANSACCIONES</xsl:text>
					</fo:block>
				</fo:table-cell>
						<fo:table-cell text-align="right" display-align="before" border-style="solid" border-bottom-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="8.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:value-of disable-output-escaping="no" select="totalTransacciones"/>
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
