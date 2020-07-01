<?xml version="1.0" encoding="ISO-8859-1"?>
 <xsl:stylesheet version="1.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="fo:layout-master-set">	
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="35.56cm" page-width="21.59cm" margin-left="2cm" margin-right="2cm">
				<fo:region-body margin-top="0.81in" margin-bottom="0.81in"/>
			</fo:simple-page-master>
			
			<fo:simple-page-master master-name="resumen-page" page-height="35.56cm" page-width="21.59cm" margin-left="2cm" margin-right="2cm">
				<fo:region-body margin-top="0.3in" margin-bottom="0.81in"/>
			</fo:simple-page-master>
			
			<fo:simple-page-master master-name="solicitud" page-height="35.56cm" page-width="21.59cm" margin-left="1cm" margin-right="1cm">
				<fo:region-body margin-top="0.5cm" margin-bottom="1cm"/>
				<fo:region-after region-name="copia" writing-mode="tb-rl" extent="10mm" />
			</fo:simple-page-master>
		</fo:layout-master-set>		
	</xsl:variable>
	<xsl:output version="1.0" encoding="ISO-8859-1" indent="no" omit-xml-declaration="no" media-type="text/html" />
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
<!-- INICIO RESUMEN LEM --> 
		<fo:page-sequence master-reference="resumen-page">
				<fo:flow flow-name="xsl-region-body" font-family="Arial Narrow, Helvetica" font-stretch="condensed">
					<fo:block font-size="9pt">
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
												<xsl:if test="lineaEmergencia/oficina = '247'">											
													<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>					
												<xsl:if test="lineaEmergencia/oficina != '247'">											
													<fo:external-graphic  height="50pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline  >
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
							<!-- INICIO BLOQUE TITULARES -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block  font-size="14pt"  text-align="center" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												HOJA DE RESUMEN LÍNEA DE EMERGENCIA
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="7cm"/>
                            <fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Nombre Titular 1
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline  >
												&#0160;<xsl:value-of select="lineaEmergencia/nombreClienteMayuscula"/>
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Rut
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>
								<xsl:choose>
								<xsl:when test="lineaEmergencia/rutSegundoTitular != ''">	
								<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
											<fo:block  font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160;Nombre Titular 2
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160;<xsl:value-of select="lineaEmergencia/nombreSegundoTitular"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
											<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160;Rut
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160; <xsl:value-of select="lineaEmergencia/rutSegundoTitular"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									</xsl:when>
									</xsl:choose>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="7cm"/>
                            <fo:table-column column-width="5cm"/>
                            <fo:table-column column-width="3cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block  font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
											&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline  >
												&#0160;Nº de Cuenta corriente Asociada
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					<!-- FIN BLOQUE TITULARES -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline  >
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>							
						<!-- INICIO BLOQUE LINEA DE EMERGENCIA*** -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block  font-size="14pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Producto Principal: Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid"  background-color="#c0c0c0">
										<fo:block font-size="14pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Cupo Total en &#0160;Pesos
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160; <xsl:value-of select="lineaEmergencia/montoAsignadoResumen"/>
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid"  background-color="#c0c0c0">
										<fo:block font-size="14pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Tasa de &#0160;Interés (1)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="left" >
											<fo:inline >
												&#0160;Tasa Máxima &#0160;Convencional vigente &#0160;(TMC)
											</fo:inline>
										</fo:block>
								    		 </fo:table-cell>				    
								</fo:table-row>	
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="13.5cm"/>
							<fo:table-body>
								<fo:table-row>
								    <fo:table-cell border-color="black" border-style="solid"  background-color="#c0c0c0">
										<fo:block font-size="14pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline  >
												&#0160;Comisión de &#0160;Renovación (2)(3)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												Comisión de cobro semestral. El primer cobro se activa con la primera utilización del producto.
												En dicho caso la tarifa asociada es de UF <xsl:value-of select="lineaEmergencia/comisionRenovacion"/> en cada renovación según detalla en "Anexo de Condiciones y tarifas", acápite D.-
											</fo:inline>
										</fo:block>
								    </fo:table-cell>					    
								</fo:table-row>	
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline background-color="#848484" start-indent="2pt"  >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block  font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Vigencia de Productos y frecuencia de renovación
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>						
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="12cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Cuenta Corriente
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Anual y de renovación automática.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Línea de Sobregiro
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Anual y de renovación automática.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Semestral y de renovación automática.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Productos / Gastos Adicionales
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>					
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Seguro de desgravamen Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="12cm"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline >
												&#0160;Costo anual UF											
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline  >
													&#0160;<xsl:value-of select="lineaEmergencia/primaMensualUF"/>
													&#0160;UF
													($
													<xsl:value-of select="lineaEmergencia/primaMensualPesos"/>	
													)										 
												</fo:inline>	
											</xsl:if>	
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline>
													&#0160;---							 
												</fo:inline>	
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Cobertura											
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline   >
													<xsl:value-of select="lineaEmergencia/cobertura"/>									 
												</fo:inline>
											</xsl:if>
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline  >
													&#0160;---							 
												</fo:inline>	
											</xsl:if>											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Compañía de Seguros										
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline>
													<xsl:value-of select="lineaEmergencia/compania"/>							 
												</fo:inline>	
											</xsl:if>	
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline  >
													&#0160;---							 
												</fo:inline>	
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid" border-bottom-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline  >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Corredora de Seguros										
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline>
													<xsl:value-of select="lineaEmergencia/corredora"/>								 
												</fo:inline>
											</xsl:if>
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline>
													&#0160;---							 
												</fo:inline>	
											</xsl:if>		
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Impuesto
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="16cm"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline >
												DL 3.745 Sobre Impuesto de Timbres y Estampillas. Se devengará sólo sobre el monto utilizado de Línea de Crédito de Emergencia.										
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Gasto Notarial
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>					
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="14cm"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
									    <fo:block font-size="9pt"  text-align="left" border-right-style="solid" padding-top="2pt" >
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
										<fo:block font-size="9pt"  text-align="left" border-right-style="solid">
											<fo:inline font-weight="bold">
												&#0160;Monto
											</fo:inline>
										</fo:block>
										 <fo:block font-size="9pt"  text-align="left" border-right-style="solid" border-bottom-style="solid">
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline >
												&#0160;$ <xsl:value-of select="lineaEmergencia/valorGasto"/>.-											
											</fo:inline>	
										</fo:block>
										<fo:block font-size="9pt"  text-align="left"  border-bottom-style="solid">
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  border-bottom-style="solid"
										padding-top="2pt" padding-left="1pt">
												<fo:inline font-weight="bold">
													Información:									 
												</fo:inline>
												<fo:inline>
													<xsl:value-of select="lineaEmergencia/descGasto"/>
												</fo:inline>													
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
						<!-- FIN BLOQUE LINEA DE EMERGENCIA*** -->
						<!-- INICIO COSTOS POR ATRASO -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-weight="bold" >
												&#0160;Costos por Atraso
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="12cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
											  &#0160;Interés Monetario (4)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Tasa Máxima Convencional (TMC) vigente a la época de la mora
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>										
									</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
												<fo:block font-size="9pt"  text-align="left" >
													<fo:inline  font-weight="bold" >
														&#0160;Gastos de Honorarios de Cobranza (%)
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>	
									</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="12cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" >
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center">
											<fo:inline font-weight="bold">
												Monto Deuda o Cuota Morosa
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center">
											<fo:inline font-weight="bold">
												&#0160; % Honorarios
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Obligaciones hasta 10 Unidades de fomento
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center" >
											<fo:inline>
												&#0160; 9%
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Por la parte que exceda de 10 UF y hasta 50 UF
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center" >
											<fo:inline>
												&#0160; 6%
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-bottom-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Por la parte que exceda de 50 UF
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center">
											<fo:inline>
												&#0160; 3%
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>										
									</fo:table-body>
						</fo:table>							
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-weight="bold" >
												&#0160;Advertencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
											 El producto de que da cuenta esta Hoja Resumen, requiere del consumidor contratante Don (ña) 
											<fo:inline text-decoration="underline"><xsl:value-of select="lineaEmergencia/nombreCliente" />
											</fo:inline>, patrimonio o ingresos futuros suficientes para pagar comisiones, intereses y deuda capital, según corresponda, durante todo el periodo de vigencia de Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-weight="bold" >
												&#0160;Garantías
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="9cm"/>
							<fo:table-body>
								<fo:table-row height="0.6cm">
									<fo:table-cell border-color="black"  border-left-style="solid" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-before="0.1cm">
											<fo:inline font-weight="bold">
											  &#0160;NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black"  border-right-style="solid" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block padding-before="0.1cm">
											 <fo:table>
						                       <fo:table-column column-width="0.6cm"/>
												   <fo:table-body>
													   <fo:table-row>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block >
																	<fo:inline> </fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black"  border-left-style="solid" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-before="0.1cm">
											<fo:inline font-weight="bold">
												&#0160;SI  
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block padding-before="0.1cm">
											 <fo:table>
						                       <fo:table-column column-width="0.6cm"/>
												   <fo:table-body>
													   <fo:table-row>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block >
																	<fo:inline> </fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-bottom-style="solid" border-right-style="solid" background-color="#c0c0c0">
											<fo:block padding-before="0.1cm" text-align="left">
											; _______________________
											</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								</fo:table-body>
						</fo:table>	
						<fo:block space-before="6.2cm" font-size="9pt">
							<fo:table table-layout="center">
								<fo:table-column column-width="7cm"/>
								<fo:table-column column-width="4cm"/>
								<fo:table-column column-width="7cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="0.8cm">
											Firma y Rut Titular 1
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt" margin-left="0.8cm">
											Firma y Rut Titular 2
											</fo:block>
										</fo:table-cell>
									</fo:table-row>																									
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>											
									</fo:table-body>
						</fo:table>	
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="9pt" >Página 1 de 2 </fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell> 
											<fo:block text-align="right" font-size="9pt" >Copia Banco</fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
						</fo:block>						
						<!-- FIN COSTOS POR ATRASO -->	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<xsl:if test="lineaEmergencia/oficina = '247'">											
													<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
												
												<xsl:if test="lineaEmergencia/oficina != '247'">											
													<fo:external-graphic  height="50pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed" >
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell  border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="justify"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline font-weight="bold" >
												LO QUE USTED DEBE SABER:											
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
										<fo:block font-size="9pt"  text-align="justify"   margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(1).- La Tasa de interés asociada al uso de la Línea de Crédito de Emergencia, corresponde a la Tasa Máxima Convencional &#0160;(TMC). El cálculo de intereses es diario en función del cupo utilizado y la TMC vigente a la fecha del cálculo.
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(2).- Esta comisión es exenta de IVA.- 
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(3).- La Comisión de Renovación se comienza a cobrar a partir de la primera utilización de la Línea de Crédito de Emergencia.
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(4).- La TMC vigente a la época de la mora, se puede consultar en la página internet de la Comisión para el Mercado Financiero (CMFChile).
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid" border-bottom-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												El valor en pesos señalado precedentemente, se ha calculado el valor de la UF del día 
												<xsl:value-of select="lineaEmergencia/fechaActual"/> que corresponde a $ &#0160;<xsl:value-of select="lineaEmergencia/UF"/>
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block padding-before="19cm">
						</fo:block>
						<fo:block>
							<fo:table table-layout="center">
								<fo:table-column column-width="7cm"/>
								<fo:table-column column-width="4cm"/>
								<fo:table-column column-width="7cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="0.8cm">
											Firma y Rut Titular 1
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt" margin-left="0.8cm">
											Firma y Rut Titular 2
											</fo:block>
										</fo:table-cell>
									</fo:table-row>																									
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>											
									</fo:table-body>
							</fo:table>	
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="9pt" >Página 2 de 2 </fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell> 
											<fo:block text-align="right" font-size="9pt" >Copia Banco</fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:block>	
				</fo:flow>
			</fo:page-sequence>		
<!-- FIN RESUMEN LEM --> 
<!-- INICIO COPIA BANCO -->    			
		<fo:page-sequence master-reference="default-page">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">					
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >									
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
													<xsl:if test="lineaEmergencia/oficina = '247'">											
														<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
													<xsl:if test="lineaEmergencia/oficina != '247'">											
														<fo:external-graphic  height="50pt" width="90pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>																							
											</fo:block>										
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table  table-layout="fixed" >
							<fo:table-column column-width="2cm"/>
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="2cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block>
												<fo:inline font-size="12pt">
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-weight="bold"  start-indent="2pt" text-decoration="underline" >
													CONTRATO DE APERTURA DE LÍNEA DE CRÉDITO DE EMERGENCIA
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block>
												<fo:inline font-size="12pt">
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
						<fo:block font-size="8pt">
							<fo:table text-align="justify" table-layout="fixed">
									<fo:table-column column-width="17cm"/>
							<fo:table-body>
								<fo:table-row>
									 <fo:table-cell>
										<fo:block font-size="16pt" color="white">
											<fo:inline  font-weight="bold"  start-indent="4pt">.</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
												Entre el 
												<fo:inline font-size="11pt" font-weight="bold"> 
													BANCO DE CRÉDITO E INVERSIONES,
												</fo:inline>
												en adelante "el Banco", por una parte, y el
												<fo:inline font-size="11pt" font-weight="bold"> 
													"CLIENTE"
												</fo:inline>
												 que se individualiza al final de este instrumento, en adelante el  "Cliente", se ha acordado celebrar el presente Contrato de Apertura de Línea de Crédito de Emergencia, también llamada a efectos de este contrato como "LCE" o "LEM".
											</fo:inline>
										</fo:block>
																				
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                              &#0160;  
                                            </fo:inline>
										</fo:block>  
										
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. Por este acto y a través de este medio, el Cliente contrata con el Banco, la apertura de una Línea de Crédito de Emergencia o LCE, que tiene por objeto incrementar la disponibilidad de pago del Cliente ante eventos que superen su saldo disponible en Cuenta Corriente o en otras líneas de crédito, entre éstas, la Línea de Sobregiro que el Cliente hubiere contratado con el Banco. 
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operará de manera automática, y con cargo a ella, y no habiendo saldos disponibles en la Cuenta Corriente u otras Líneas de Crédito, se cubrirán (i) los cargos que disponga el Cliente, ya sea a través del giro de un cheque, de un Pago Automático de Cuentas -PAC- , giro en Cajero Automático o mediante cualquier otro medio, y (ii) los demás cargos que efectúe el Banco. Con todo, no se cargarán a la LCE, aún cuando exista cupo disponible, entre otros, las comisiones de mantención y administración de los productos.
													 </fo:inline>
										</fo:block>		 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Produciéndose una situación de sobregiro por cualesquiera de las causas singularizadas precedentemente, el Banco procederá a cargar la LCE en el orden en que se produzcan y registren tales eventos.
													 </fo:inline>
                                        </fo:block>                                           
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	  4. Cada vez que existan fondos disponibles en la Cuenta Corriente o Línea de Sobregiro, si la hubiere, y la LCE registrare saldos deudores, se abonará de manera automática la citada LCE, con cargo a las señaladas disponibilidades.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    5. Sin perjuicio de lo señalado en el numeral precedente, para el evento de que no haya fondos disponibles en la Cuenta Corriente ni en la Línea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el Banco le informe. Con todo, la LCE ha de hallarse íntegramente pagada, tanto en capital, intereses y comisiones, a más tardar al cumplirse el período de vigencia pactado.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   6. El plazo de la LCE será de 6 meses, plazo que se renovará automáticamente, por períodos iguales y sucesivos, salvo que cualesquiera de las partes decida ponerle término por escrito con a lo menos 15 días de anticipación. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco podrá poner término a la LCE cuando se haya verificado alguna o algunas de las siguientes causales:
											</fo:inline>
										</fo:block>		
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">		
										<fo:inline font-size="11pt">                
                                                    a) Cuando el Cliente hiciere un uso inadecuado del producto o servicio, tales como, sobregiros no pactados; órdenes de no pago y/o protesto de cheques frecuentes; atrasos en el servicio de sus deudas; no acreditación del origen de los fondos depositados en sus cuentas; actividades de origen desconocido, riesgosas o contrarias a la ley, etc; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    b) Muerte del Cliente o Disolución en el caso de personas jurídicas. En el caso de tratarse de una  cuenta corriente pluripersonal, la muerte de uno cualquiera de los titulares; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    c) Insolvencia, declaración de interdicción, presentación de convenios, quiebra o tener el cliente la calidad de deudor en un procedimiento concursal de liquidación.
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    d) Cambios objetivos en la condición económica, financiera o de mercado en que el Cliente opera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    e) Deterioro en el comportamiento de pago del Cliente, o cuando habiéndosele solicitado, éste no aportase al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situación económica o financiera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    f) Mantener inactivo o sin uso, por más de un año los productos y servicios; 
                                            </fo:inline>
                                        </fo:block>
										 <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    g) Incurrir en conductas agraviantes u ofensivas en contra del personal del Banco;
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    h) Integrar el Cliente, la nómina de personas con las cuales al Banco le esté impedido operar; y,
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    i) La revocación por parte del Cliente, de uno o más mandatos cuya ejecución interesare al Banco o dificultare prestar los servicios contratados.
                                            </fo:inline>
                                        </fo:block>
										
			                            <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                        <fo:inline font-size="11pt">                
                                                    El Banco deberá comunicar el término del contrato por escrito al domicilio o al correo electrónico registrado, con a lo menos 15 días de anticipación, o con aquella que señalen las normas legales y administrativas vigentes. El no ejercicio por parte del Banco de las facultades antes mencionadas, no supone renuncia a ejercerlas en el futuro.
                                            </fo:inline>
                                        </fo:block>	
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   Las partes acuerdan también que, las causales antes señaladas autorizan al Banco para proceder a la suspensión o bloqueo inmediato del producto o servicio de que se trate.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   8. El monto de la LCE, podrá ser aumentado por el Banco previo consentimiento del Cliente, salvo en aquellos casos que correspondan a la aplicación de modalidades de aumento previamente acordadas con éste. El Cliente y el Banco acuerdan que este último pueda aumentar el monto de la LCE una vez al año, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o más de su cupo disponible en algún mes del año. Para estos efectos, el Banco le informará el aumento de dicha línea por correo electrónico o a través de cualquier otro medio de comunicación. El Banco podrá rebajar el monto de la LCE con tal que a esa fecha el Cliente no se encuentre haciendo uso de la línea por un monto superior al nuevo límite.
											</fo:inline>
										</fo:block>										
										<fo:block text-align="left" break-after="page"></fo:block>
										<fo:block font-size="8pt">
						                        <fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="3cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >									
																<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																		<xsl:if test="lineaEmergencia/oficina = '247'">											
																			<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>
																		<xsl:if test="lineaEmergencia/oficina != '247'">											
																			<fo:external-graphic  height="50pt" width="90pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>																							
																</fo:block>										
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
                                     </fo:block>
									 <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                              &#0160;  
                                            </fo:inline>
                                        </fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    9. En caso de término de la LCE se hará exigible el pago inmediato del saldo total adeudado a esa fecha, pudiendo el Banco cargar la Cuenta Corriente, si tuviere fondos disponibles. Las obligaciones que resulten adeudadas por este concepto, tendrán el carácter de indivisibles.
															</fo:inline>
										</fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        10. La LCE devenga intereses equivalentes a la tasa máxima convencional vigente para operaciones no reajustables a más de 90 días. Los créditos cursados al amparo de la LCE devengarán intereses desde la fecha en que se cursen y hasta la de su pago efectivo, los que se calcularán y aplicarán sobre el saldo del respectivo crédito día a día. 
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        11. El Cliente otorga mandato  al Banco, para que éste, actuando en su nombre y representación, autocontratando, suscriba y complete uno o más pagarés, a fin de documentar eficazmente los créditos que se cursen con cargo a la LCE. En el ejercicio de este mandato, el Banco podrá renunciar a la obligación de protesto, facultar para hacer autorizar la firma de sus apoderados que suscriban el pagaré, ante Notario Público, de manera que el pagaré tenga mérito ejecutivo para su respectiva cobranza judicial. El Cliente reconoce que el presente mandato se otorga en interés del Banco y subsistirá aún después del término de la presente Línea, sólo para el cobro del saldo deudor con el Banco.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        12. El Cliente faculta expresamente al Banco para delegar el presente mandato en los mismos términos, en la sociedad Servicios de Normalización y Cobranza - Normaliza S.A., filial del Banco, o en aquella otra persona natural o jurídica que el Banco determine. Con todo, en el caso que el Cliente hubiere contratado la Línea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el mandato e instrucciones para completar el pagaré que con motivo de la contratación de dicha Línea hubiere otorgado e impartido al Banco, se entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagaré, las obligaciones derivadas de la utilización de la LCE objeto de este contrato.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        13. Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecución y operación serán de cargo exclusivo del Cliente, facultándose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de crédito de que sea titular en el Banco. 
                                                            </fo:inline>
                                        </fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        14. Los mandatos que se hubieren otorgado en el Contrato serán revocables, una vez que estén totalmente extinguidas las obligaciones a favor del Bci. Con todo, la revocación de uno o algunos de aquellos, deberá comunicarse por escrito al Banco en cualquiera de sus sucursales, y producirá sus efectos, transcurridos 15 días de haberse notificado la revocación al Banco. Tratándose de la revocación del mandato para pagar automáticamente los créditos adeudados al Banco, ella surtirá efecto a más tardar en el período subsiguiente de pago o abono que corresponda a la obligación.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        15. La rendición de cuentas del ejercicio del o los mandatos que el Cliente otorgue al Banco, se verificará mediante el envío a aquel de los comprobantes, cartolas u otros documentos (en copia u original según corresponda) que el Banco hubiere suscrito en su representación, y se remitirán al domicilio o correo electrónico que el Cliente haya registrado en el Banco o en su sitio privado de la página web del banco.

                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        16. Para efectos de determinar las tarifas o comisiones, el Banco estará facultado para establecer criterios objetivos de segmentación de tal manera que el Cliente pueda conocer la tarifas con anticipación y que le corresponde en función de dicha segmentación. El banco podrá efectuar una reclasificación de los Clientes en atención a su comportamiento u otras variables. Las tarifas estarán disponibles en los tarifarios del banco y sitio www.bci.cl, y que el Cliente podrá consultar.
                                                            </fo:inline>
                                        </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													17.	Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuarán a la dirección de correo electrónico que el cliente haya informado al Banco y éste haya registrado. En su defecto, se remitirán por escrito al último domicilio que tenga registrado, ya sea por carta o en los estados de cuenta o cartolas o por Internet. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													18.	El Cliente declara haber recibido el volante que contiene la información atingente a las empresas que prestan los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el pago de estas obligaciones. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													19.	Servicio al Cliente Bci.- En caso que el Cliente quisiera formular alguna consulta o reclamo, podrá hacerlo por teléfono; a través de la página web del Banco; o  personalmente en cualesquiera de sus oficinas o sucursales Bci y Bci Nova.  Mayor información podrá encontrar en www.bci.cl, www.tbanc.cl o www.bcinova.cl
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													20.	El Contrato no cuenta con Sello Sernac.
												</fo:inline>
										</fo:block>
									    <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
										</fo:block>
												<fo:table table-layout="fixed">
												<fo:table-column column-width="17cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >
																<fo:block font-size="12pt" padding-top="2pt" padding-left="1pt">
																	<fo:inline start-indent="2pt" text-decoration="underline">
																		COMISIÓN LINEA DE EMERGENCIA (LCE)
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Comisión de Renovación: Comisión de cobro semestral. El primer cobro se activa con la primera utilización del producto. En dicho caso la tarifa asociada es de UF 3 en cada renovación (**)
												</fo:inline>
											</fo:block>
										</fo:block>
										<fo:block text-align="left" break-after="page"></fo:block>
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="3cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >									
																<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																		<xsl:if test="lineaEmergencia/oficina = '247'">											
																			<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>
																		<xsl:if test="lineaEmergencia/oficina != '247'">											
																			<fo:external-graphic  height="50pt" width="90pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>																							
																</fo:block>										
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  &#0160;  
											</fo:inline>
										</fo:block>  
										<fo:block font-size="8pt">
											<fo:table border-collapse="collapse">
											  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black"/>
											  <fo:table-column column-width="68mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black"/>
											  <fo:table-column column-width="68mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black"/>
											  <fo:table-body>
												<fo:table-row>
												  <fo:table-cell border-bottom="0.5pt solid black" >
													<fo:block space-after="0.1cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Seguro</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block space-after="0.1cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Cobertura</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block space-after="0.1cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Prima</fo:block>
												  </fo:table-cell>
												</fo:table-row>
												<fo:table-row>
												  <fo:table-cell border-bottom="0.5pt solid black" border-left="0.5pt solid black">
													<fo:block space-after="0.5cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Desgravamen</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">Cubre el cupo utilizado de la LCE, con un tope máximo correspondiente al cupo autorizado.</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">0,324% por semestre sobre cupo aprobado, con prima mínima de UF 0,17 y máximo de UF 3</fo:block>
												  </fo:table-cell>
												</fo:table-row>
											  </fo:table-body>
											</fo:table>
												<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="10%"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block text-align="center" >&#0160; </fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">          
																	<fo:inline font-size="11pt">                
																	(*)El Cliente y el Banco acuerdan que este último podrá aumentar el monto de las líneas una vez al año, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o más de su cupo disponible en algún mes del año. El Banco informará el aumento, por correo electrónico o a través de cualquier otro medio de comunicación.
																	</fo:inline>	
																</fo:block>
																<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																	<fo:inline font-size="11pt">  																	
																	(**) Comisión exenta de IVA.                                                
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>	
													</fo:table-body>	
												</fo:table>	
										</fo:block>   
					                    <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
					                    </fo:block>   
                                        <fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt" text-decoration="underline" >                
												Declaración del cliente:
	                                       </fo:inline>
										   <fo:inline font-size="11pt">                
												Es mi voluntad que toda comunicación o aviso a que el Banco se encuentre obligado con motivo de lo establecido en este contrato, sea remitido a la dirección de correo electrónico, indicada al final del presente contrato. 
	                                       </fo:inline>
                                        </fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  &#0160;  
											</fo:inline>
										</fo:block> 										
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  Monto LCE contratada: &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  N° Cuenta Corriente asociada: &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/> 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
										</fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt" text-decoration="underline">                
                                                Individualización de las partes:
                                            </fo:inline>
										</fo:block>                                                                                               
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												 Nombre Cliente o Titular (1): &#0160; <xsl:value-of select="lineaEmergencia/nombreTitular"/> 
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												Cédula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutTitular"/>
                                            </fo:inline>
                                        </fo:block>              
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
													Dirección Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioTitular"/>
                                            </fo:inline>
                                        </fo:block>      
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Comuna: &#0160; 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Región: &#0160; 
											</fo:inline>
										</fo:block>					
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												Correo y/o Casilla Electrónica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoTitular"/>
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												N° de Teléfono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularTitular"/>
                                            </fo:inline>
                                        </fo:block>    
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												&#0160;
                                            </fo:inline>
                                        </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													 Nombre Cliente o Titular (2): &#0160; <xsl:value-of select="lineaEmergencia/nombreDirecto"/> 
												</fo:inline>
											</fo:block>        
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Cédula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutDirecto"/> 
												</fo:inline>
											</fo:block>              
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Dirección Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioDirecto"/>
												</fo:inline>
											</fo:block>      
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Comuna: &#0160; 
												</fo:inline>
											</fo:block>
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Región: &#0160; 
												</fo:inline>
											</fo:block>					
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Correo y/o Casilla Electrónica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoDirecto"/>
												</fo:inline>
											</fo:block>        
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													N° de Teléfono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularDirecto"/>
												</fo:inline>
											</fo:block>    
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													&#0160;
												</fo:inline>
											</fo:block> 
										<fo:block space-after="1cm" font-size="11pt">
									    	<fo:table table-layout="center">
									    		<fo:table-column column-width="17cm"/>
									    		<fo:table-body>
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="left">Banco: Banco de Crédito e Inversiones  </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Rut N°: 97.006.000-6 </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Domicilio: Avenida El Golf 125, Las Condes, Santiago  </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Representante o Apoderado: <xsl:value-of select="lineaEmergencia/nombreApoderado"/></fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
												</fo:table-body>	
											</fo:table>	
									    	<fo:table table-layout="center">
									    		<fo:table-column column-width="8cm"/>
												<fo:table-column column-width="8cm"/>
									    		<fo:table-body>		
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >&#0160; </fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>			
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >&#0160; </fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>		
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >&#0160; </fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >__________________________</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >Firma Titular (1)</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Firma Titular (2)</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
													<fo:table-row>
														<fo:table-cell number-columns-spanned="2">
															<fo:block text-align="center">
																<fo:external-graphic>
																	<xsl:attribute name="src">
																		<xsl:value-of select="lineaEmergencia/rutaFirma"/>
																	</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
									    			<fo:table-row>									    				
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block text-align="center" font-weight="bold">Firma Banco</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    		</fo:table-body>
									    	</fo:table>
									    </fo:block>
										<fo:block text-align="right" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt" text-align="right">                
													En _______________________ a &#0160; <xsl:value-of select="lineaEmergencia/diaApertura"/> &#0160;  de &#0160; <xsl:value-of select="lineaEmergencia/mesApertura"/> &#0160; de &#0160; <xsl:value-of select="lineaEmergencia/anoApertura"/>   
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				 </fo:block>
			</fo:flow>
		</fo:page-sequence>	 	 
<!-- FIN COPIA BANCO -->	
<!-- INICIO RESUMEN LEM --> 
		<fo:page-sequence master-reference="resumen-page">
				<fo:flow flow-name="xsl-region-body" font-family="Arial Narrow, Helvetica" font-stretch="condensed">
					<fo:block font-size="9pt">
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
												<xsl:if test="lineaEmergencia/oficina = '247'">											
													<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
												<xsl:if test="lineaEmergencia/oficina != '247'">											
													<fo:external-graphic  height="50pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline  >
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
							<!-- INICIO BLOQUE TITULARES -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block  font-size="14pt"  text-align="center" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												HOJA DE RESUMEN LÍNEA DE EMERGENCIA
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="7cm"/>
                            <fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Nombre Titular 1
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline  >
												&#0160;<xsl:value-of select="lineaEmergencia/nombreClienteMayuscula"/>
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Rut
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>
								<xsl:choose>
								<xsl:when test="lineaEmergencia/rutSegundoTitular != ''">
								<fo:table-row>
										<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
											<fo:block  font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160;Nombre Titular 2
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160; <xsl:value-of select="lineaEmergencia/nombreSegundoTitular"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
											<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160;Rut
												</fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell border-color="black" border-style="solid">
											<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
												<fo:inline>
													&#0160; <xsl:value-of select="lineaEmergencia/rutSegundoTitular"/>
												</fo:inline>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>	
									</xsl:when>
									</xsl:choose>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="7cm"/>
                            <fo:table-column column-width="5cm"/>
                            <fo:table-column column-width="3cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block  font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
											&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline  >
												&#0160;Nº de Cuenta corriente Asociada
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					    <!-- FIN BLOQUE TITULARES -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline  >
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>							
						<!-- INICIO BLOQUE LINEA DE EMERGENCIA*** -->
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block  font-size="14pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Producto Principal: Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid"  background-color="#c0c0c0">
										<fo:block font-size="14pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Cupo Total en &#0160;Pesos
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160; <xsl:value-of select="lineaEmergencia/montoAsignadoResumen"/>
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid"  background-color="#c0c0c0">
										<fo:block font-size="14pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Tasa de &#0160;Interés (1)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="left" >
											<fo:inline >
												&#0160;Tasa Máxima &#0160;Convencional vigente &#0160;(TMC)
											</fo:inline>
										</fo:block>
								    		 </fo:table-cell>				    
								</fo:table-row>	
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="13.5cm"/>
							<fo:table-body>
								<fo:table-row>
								    <fo:table-cell border-color="black" border-style="solid"  background-color="#c0c0c0">
										<fo:block font-size="14pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline  >
												&#0160;Comisión de &#0160;Renovación (2)(3)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												Comisión de cobro semestral. El primer cobro se activa con la primera utilización del producto.
												En dicho caso la tarifa asociada es de UF <xsl:value-of select="lineaEmergencia/comisionRenovacion"/> en cada renovación según detalla en "Anexo de Condiciones y tarifas", acápite D.-
											</fo:inline>
										</fo:block>
								    </fo:table-cell>					    
								</fo:table-row>	
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline background-color="#848484" start-indent="2pt"  >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block  font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Vigencia de Productos y frecuencia de renovación
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>						
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="12cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Cuenta Corriente
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Anual y de renovación automática.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Línea de Sobregiro
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Anual y de renovación automática.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Semestral y de renovación automática.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Productos / Gastos Adicionales
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>					
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Seguro de desgravamen Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="12cm"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline >
												&#0160;Costo anual UF											
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline  >
													&#0160;<xsl:value-of select="lineaEmergencia/primaMensualUF"/>
													&#0160;UF
													($
													<xsl:value-of select="lineaEmergencia/primaMensualPesos"/>	
													)										 
												</fo:inline>	
											</xsl:if>	
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline>
													&#0160;---							 
												</fo:inline>	
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Cobertura											
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline   >
													<xsl:value-of select="lineaEmergencia/cobertura"/>									 
												</fo:inline>
											</xsl:if>
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline  >
													&#0160;---							 
												</fo:inline>	
											</xsl:if>											
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Compañía de Seguros										
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline>
													<xsl:value-of select="lineaEmergencia/compania"/>							 
												</fo:inline>	
											</xsl:if>	
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline  >
													&#0160;---							 
												</fo:inline>	
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid" border-bottom-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline  >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Corredora de Seguros										
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<xsl:if test="lineaEmergencia/seguro = 'true'">
												<fo:inline>
													<xsl:value-of select="lineaEmergencia/corredora"/>								 
												</fo:inline>
											</xsl:if>
											<xsl:if test="lineaEmergencia/seguro = 'false'">
												<fo:inline>
													&#0160;---							 
												</fo:inline>	
											</xsl:if>		
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Impuesto
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="16cm"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline >
												DL 3.745 Sobre Impuesto de Timbres y Estampillas. Se devengará sólo sobre el monto utilizado de Línea de Crédito de Emergencia.										
											</fo:inline>	
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;Gasto Notarial
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>					
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="14cm"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell border-color="black" border-left-style="solid">
									    <fo:block font-size="9pt"  text-align="left" border-right-style="solid" padding-top="2pt" >
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
										<fo:block font-size="9pt"  text-align="left" border-right-style="solid">
											<fo:inline font-weight="bold">
												&#0160;Monto
											</fo:inline>
										</fo:block>
										 <fo:block font-size="9pt"  text-align="left" border-right-style="solid" border-bottom-style="solid">
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black">
										<fo:block font-size="9pt"  text-align="left" padding-top="2pt" padding-left="1pt">
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline >
												&#0160;$ <xsl:value-of select="lineaEmergencia/valorGasto"/>.-											
											</fo:inline>	
										</fo:block>
										<fo:block font-size="9pt"  text-align="left"  border-bottom-style="solid">
											<fo:inline font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  border-bottom-style="solid"
										padding-top="2pt" padding-left="1pt">
												<fo:inline font-weight="bold">
													Información:									 
												</fo:inline>
												<fo:inline>
													<xsl:value-of select="lineaEmergencia/descGasto"/>
												</fo:inline>													
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
						<!-- FIN BLOQUE LINEA DE EMERGENCIA*** -->	
						<!-- INICIO COSTOS POR ATRASO -->						
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-weight="bold" >
												&#0160;Costos por Atraso
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="12cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
											  &#0160;Interés Monetario (4)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Tasa Máxima Convencional (TMC) vigente a la época de la mora
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>										
									</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
												<fo:block font-size="9pt"  text-align="left" >
													<fo:inline  font-weight="bold" >
														&#0160;Gastos de Honorarios de Cobranza (%)
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>	
									</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="12cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" >
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center">
											<fo:inline font-weight="bold">
												Monto Deuda o Cuota Morosa
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center">
											<fo:inline font-weight="bold">
												&#0160; % Honorarios
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Obligaciones hasta 10 Unidades de fomento
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center" >
											<fo:inline>
												&#0160; 9%
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Por la parte que exceda de 10 UF y hasta 50 UF
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center" >
											<fo:inline>
												&#0160; 6%
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-bottom-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;Por la parte que exceda de 50 UF
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="center">
											<fo:inline>
												&#0160; 3%
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>										
									</fo:table-body>
						</fo:table>							
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-weight="bold" >
												&#0160;Advertencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
											 El producto de que da cuenta esta Hoja Resumen, requiere del consumidor contratante Don (ña) 
											<fo:inline text-decoration="underline"><xsl:value-of select="lineaEmergencia/nombreCliente" />
											</fo:inline>, patrimonio o ingresos futuros suficientes para pagar comisiones, intereses y deuda capital, según corresponda, durante todo el periodo de vigencia de Línea de Crédito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-weight="bold" >
												&#0160;Garantías
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="9cm"/>
							<fo:table-body>
								<fo:table-row height="0.6cm">
									<fo:table-cell border-color="black"  border-left-style="solid" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-before="0.1cm">
											<fo:inline font-weight="bold">
											  &#0160;NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black"  border-right-style="solid" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block padding-before="0.1cm">
											 <fo:table>
						                       <fo:table-column column-width="0.6cm"/>
												   <fo:table-body>
													   <fo:table-row>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block >
																	<fo:inline> </fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black"  border-left-style="solid" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left" padding-before="0.1cm">
											<fo:inline font-weight="bold">
												&#0160;SI  
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-bottom-style="solid" background-color="#c0c0c0">
										<fo:block padding-before="0.1cm">
											 <fo:table>
						                       <fo:table-column column-width="0.6cm"/>
												   <fo:table-body>
													   <fo:table-row>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block >
																	<fo:inline> </fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-bottom-style="solid" border-right-style="solid" background-color="#c0c0c0">
											<fo:block padding-before="0.1cm" text-align="left">
											; _______________________
											</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								</fo:table-body>
						</fo:table>	
						<fo:block space-before="6.2cm" font-size="9pt">
							<fo:table table-layout="center">
								<fo:table-column column-width="7cm"/>
								<fo:table-column column-width="4cm"/>
								<fo:table-column column-width="7cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="0.8cm">
											Firma y Rut Titular 1
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt" margin-left="0.8cm">
											Firma y Rut Titular 2
											</fo:block>
										</fo:table-cell>
									</fo:table-row>																									
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>											
									</fo:table-body>
							</fo:table>	
								<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="9pt" >Página 1 de 2 </fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell> 
											<fo:block text-align="right" font-size="9pt" >Copia Cliente</fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
						</fo:block>						
						<!-- FIN COSTOS POR ATRASO -->	
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<xsl:if test="lineaEmergencia/oficina = '247'">											
													<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>											
												<xsl:if test="lineaEmergencia/oficina != '247'">											
													<fo:external-graphic  height="50pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="10cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								</fo:table-row>										
							</fo:table-body>
						</fo:table>	
						<fo:table text-align="center" table-layout="fixed" >
						<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell  border-color="black" border-style="solid" color="#FFFFFF" background-color="#0B0B3B">
										<fo:block font-size="9pt"  text-align="justify"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline font-weight="bold" >
												LO QUE USTED DEBE SABER:											
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
										<fo:block font-size="9pt"  text-align="justify"   margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(1).- La Tasa de interés asociada al uso de la Línea de Crédito de Emergencia, corresponde a la Tasa Máxima Convencional &#0160;(TMC). El cálculo de intereses es diario en función del cupo utilizado y la TMC vigente a la fecha del cálculo.
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(2).- Esta comisión es exenta de IVA.- 
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(3).- La Comisión de Renovación se comienza a cobrar a partir de la primera utilización de la Línea de Crédito de Emergencia.
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												(4).- La TMC vigente a la época de la mora, se puede consultar en la página internet de la Comisión para el Mercado Financiero (CMFChile).
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-left-style="solid" border-right-style="solid" border-bottom-style="solid">
										<fo:block font-size="9pt"  text-align="justify"  padding-top="2pt"  margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												El valor en pesos señalado precedentemente, se ha calculado el valor de la UF del día 
												<xsl:value-of select="lineaEmergencia/fechaActual"/> que corresponde a $ &#0160;<xsl:value-of select="lineaEmergencia/UF"/>
											</fo:inline>
										</fo:block>
									    <fo:block font-size="9pt"  text-align="left">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:block padding-before="19cm">
						</fo:block>
						<fo:block>
							<fo:table table-layout="center">
								<fo:table-column column-width="7cm"/>
								<fo:table-column column-width="4cm"/>
								<fo:table-column column-width="7cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt">__________________________</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="0.8cm">
											Firma y Rut Titular 1
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="center" >&#0160;</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt" margin-left="0.8cm">
											Firma y Rut Titular 2
											</fo:block>
										</fo:table-cell>
									</fo:table-row>																									
								</fo:table-body>
							</fo:table>
							<fo:table text-align="center" table-layout="fixed">
								<fo:table-column column-width="18cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block >
													<fo:inline>
														&#0160;
													</fo:inline>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>											
									</fo:table-body>
							</fo:table>	
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="center" font-size="9pt" >Página 2 de 2 </fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
							<fo:table table-layout="center">
								<fo:table-column column-width="18cm"/>
								<fo:table-body>						
									<fo:table-row>
										<fo:table-cell> 
											<fo:block text-align="right" font-size="9pt" >Copia Cliente</fo:block>
										</fo:table-cell>
									</fo:table-row>																		
								</fo:table-body>
							</fo:table>
						</fo:block>
					</fo:block>	
				</fo:flow>
			</fo:page-sequence>
<!-- FIN RESUMEN LEM -->  
<!-- INICIO COPIA CLIENTE -->             
		<fo:page-sequence master-reference="default-page">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">					
							<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >									
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
													<xsl:if test="lineaEmergencia/oficina = '247'">											
														<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
													<xsl:if test="lineaEmergencia/oficina != '247'">											
														<fo:external-graphic  height="50pt" width="90pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>																							
											</fo:block>										
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
							<fo:table  table-layout="fixed" >
							<fo:table-column column-width="2cm"/>
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="2cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >
											<fo:block>
												<fo:inline font-size="12pt">
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
												<fo:inline  font-weight="bold"  start-indent="2pt" text-decoration="underline" >
													CONTRATO DE APERTURA DE LÍNEA DE CRÉDITO DE EMERGENCIA
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
										<fo:table-cell >
											<fo:block>
												<fo:inline font-size="12pt">
													&#0160;
												</fo:inline>
											</fo:block>
									    </fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
						<fo:block font-size="8pt">
							<fo:table text-align="justify" table-layout="fixed">
									<fo:table-column column-width="17cm"/>
							<fo:table-body>
								<fo:table-row>
									 <fo:table-cell>
										<fo:block font-size="16pt" color="white">
											<fo:inline  font-weight="bold"  start-indent="4pt">.</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
												Entre el 
												<fo:inline font-size="11pt" font-weight="bold"> 
													BANCO DE CRÉDITO E INVERSIONES,
												</fo:inline>
												en adelante "el Banco", por una parte, y el
												<fo:inline font-size="11pt" font-weight="bold"> 
													"CLIENTE"
												</fo:inline>
												 que se individualiza al final de este instrumento, en adelante el  "Cliente", se ha acordado celebrar el presente Contrato de Apertura de Línea de Crédito de Emergencia, también llamada a efectos de este contrato como "LCE" o "LEM".
											</fo:inline>
										</fo:block>
																				
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                              &#0160;  
                                            </fo:inline>
										</fo:block>  
										
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. Por este acto y a través de este medio, el Cliente contrata con el Banco, la apertura de una Línea de Crédito de Emergencia o LCE, que tiene por objeto incrementar la disponibilidad de pago del Cliente ante eventos que superen su saldo disponible en Cuenta Corriente o en otras líneas de crédito, entre éstas, la Línea de Sobregiro que el Cliente hubiere contratado con el Banco. 
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operará de manera automática, y con cargo a ella, y no habiendo saldos disponibles en la Cuenta Corriente u otras Líneas de Crédito, se cubrirán (i) los cargos que disponga el Cliente, ya sea a través del giro de un cheque, de un Pago Automático de Cuentas -PAC- , giro en Cajero Automático o mediante cualquier otro medio, y (ii) los demás cargos que efectúe el Banco. Con todo, no se cargarán a la LCE, aún cuando exista cupo disponible, entre otros, las comisiones de mantención y administración de los productos.
													 </fo:inline>
										</fo:block>		 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Produciéndose una situación de sobregiro por cualesquiera de las causas singularizadas precedentemente, el Banco procederá a cargar la LCE en el orden en que se produzcan y registren tales eventos.
													 </fo:inline>
                                        </fo:block>                                           
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	  4. Cada vez que existan fondos disponibles en la Cuenta Corriente o Línea de Sobregiro, si la hubiere, y la LCE registrare saldos deudores, se abonará de manera automática la citada LCE, con cargo a las señaladas disponibilidades.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    5. Sin perjuicio de lo señalado en el numeral precedente, para el evento de que no haya fondos disponibles en la Cuenta Corriente ni en la Línea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el Banco le informe. Con todo, la LCE ha de hallarse íntegramente pagada, tanto en capital, intereses y comisiones, a más tardar al cumplirse el período de vigencia pactado.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   6. El plazo de la LCE será de 6 meses, plazo que se renovará automáticamente, por períodos iguales y sucesivos, salvo que cualesquiera de las partes decida ponerle término por escrito con a lo menos 15 días de anticipación. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco podrá poner término a la LCE cuando se haya verificado alguna o algunas de las siguientes causales:
											</fo:inline>
										</fo:block>		
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">		
										<fo:inline font-size="11pt">                
                                                    a) Cuando el Cliente hiciere un uso inadecuado del producto o servicio, tales como, sobregiros no pactados; órdenes de no pago y/o protesto de cheques frecuentes; atrasos en el servicio de sus deudas; no acreditación del origen de los fondos depositados en sus cuentas; actividades de origen desconocido, riesgosas o contrarias a la ley, etc; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    b) Muerte del Cliente o Disolución en el caso de personas jurídicas. En el caso de tratarse de una  cuenta corriente pluripersonal, la muerte de uno cualquiera de los titulares; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    c) Insolvencia, declaración de interdicción, presentación de convenios, quiebra o tener el cliente la calidad de deudor en un procedimiento concursal de liquidación.
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    d) Cambios objetivos en la condición económica, financiera o de mercado en que el Cliente opera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    e) Deterioro en el comportamiento de pago del Cliente, o cuando habiéndosele solicitado, éste no aportase al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situación económica o financiera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    f) Mantener inactivo o sin uso, por más de un año los productos y servicios; 
                                            </fo:inline>
                                        </fo:block>
										 <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    g) Incurrir en conductas agraviantes u ofensivas en contra del personal del Banco;
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    h) Integrar el Cliente, la nómina de personas con las cuales al Banco le esté impedido operar; y,
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    i) La revocación por parte del Cliente, de uno o más mandatos cuya ejecución interesare al Banco o dificultare prestar los servicios contratados.
                                            </fo:inline>
                                        </fo:block>
										
			                            <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                        <fo:inline font-size="11pt">                
                                                    El Banco deberá comunicar el término del contrato por escrito al domicilio o al correo electrónico registrado, con a lo menos 15 días de anticipación, o con aquella que señalen las normas legales y administrativas vigentes. El no ejercicio por parte del Banco de las facultades antes mencionadas, no supone renuncia a ejercerlas en el futuro.
                                            </fo:inline>
                                        </fo:block>	
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   Las partes acuerdan también que, las causales antes señaladas autorizan al Banco para proceder a la suspensión o bloqueo inmediato del producto o servicio de que se trate.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   8. El monto de la LCE, podrá ser aumentado por el Banco previo consentimiento del Cliente, salvo en aquellos casos que correspondan a la aplicación de modalidades de aumento previamente acordadas con éste. El Cliente y el Banco acuerdan que este último pueda aumentar el monto de la LCE una vez al año, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o más de su cupo disponible en algún mes del año. Para estos efectos, el Banco le informará el aumento de dicha línea por correo electrónico o a través de cualquier otro medio de comunicación. El Banco podrá rebajar el monto de la LCE con tal que a esa fecha el Cliente no se encuentre haciendo uso de la línea por un monto superior al nuevo límite.
											</fo:inline>
										</fo:block>										
										<fo:block text-align="left" break-after="page"></fo:block>
										<fo:block font-size="8pt">
						                        <fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="3cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >									
																<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																		<xsl:if test="lineaEmergencia/oficina = '247'">											
																			<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>
																		<xsl:if test="lineaEmergencia/oficina != '247'">											
																			<fo:external-graphic  height="50pt" width="90pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>																							
																</fo:block>										
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
                                     </fo:block>
									 <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                              &#0160;  
                                            </fo:inline>
                                        </fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
																	    9. En caso de término de la LCE se hará exigible el pago inmediato del saldo total adeudado a esa fecha, pudiendo el Banco cargar la Cuenta Corriente, si tuviere fondos disponibles. Las obligaciones que resulten adeudadas por este concepto, tendrán el carácter de indivisibles.
															</fo:inline>
										</fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        10. La LCE devenga intereses equivalentes a la tasa máxima convencional vigente para operaciones no reajustables a más de 90 días. Los créditos cursados al amparo de la LCE devengarán intereses desde la fecha en que se cursen y hasta la de su pago efectivo, los que se calcularán y aplicarán sobre el saldo del respectivo crédito día a día. 
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        11. El Cliente otorga mandato  al Banco, para que éste, actuando en su nombre y representación, autocontratando, suscriba y complete uno o más pagarés, a fin de documentar eficazmente los créditos que se cursen con cargo a la LCE. En el ejercicio de este mandato, el Banco podrá renunciar a la obligación de protesto, facultar para hacer autorizar la firma de sus apoderados que suscriban el pagaré, ante Notario Público, de manera que el pagaré tenga mérito ejecutivo para su respectiva cobranza judicial. El Cliente reconoce que el presente mandato se otorga en interés del Banco y subsistirá aún después del término de la presente Línea, sólo para el cobro del saldo deudor con el Banco.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        12. El Cliente faculta expresamente al Banco para delegar el presente mandato en los mismos términos, en la sociedad Servicios de Normalización y Cobranza - Normaliza S.A., filial del Banco, o en aquella otra persona natural o jurídica que el Banco determine. Con todo, en el caso que el Cliente hubiere contratado la Línea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el mandato e instrucciones para completar el pagaré que con motivo de la contratación de dicha Línea hubiere otorgado e impartido al Banco, se entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagaré, las obligaciones derivadas de la utilización de la LCE objeto de este contrato.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        13. Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecución y operación serán de cargo exclusivo del Cliente, facultándose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de crédito de que sea titular en el Banco. 
                                                            </fo:inline>
                                        </fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        14. Los mandatos que se hubieren otorgado en el Contrato serán revocables, una vez que estén totalmente extinguidas las obligaciones a favor del Bci. Con todo, la revocación de uno o algunos de aquellos, deberá comunicarse por escrito al Banco en cualquiera de sus sucursales, y producirá sus efectos, transcurridos 15 días de haberse notificado la revocación al Banco. Tratándose de la revocación del mandato para pagar automáticamente los créditos adeudados al Banco, ella surtirá efecto a más tardar en el período subsiguiente de pago o abono que corresponda a la obligación.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        15. La rendición de cuentas del ejercicio del o los mandatos que el Cliente otorgue al Banco, se verificará mediante el envío a aquel de los comprobantes, cartolas u otros documentos (en copia u original según corresponda) que el Banco hubiere suscrito en su representación, y se remitirán al domicilio o correo electrónico que el Cliente haya registrado en el Banco o en su sitio privado de la página web del banco.

                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        16. Para efectos de determinar las tarifas o comisiones, el Banco estará facultado para establecer criterios objetivos de segmentación de tal manera que el Cliente pueda conocer la tarifas con anticipación y que le corresponde en función de dicha segmentación. El banco podrá efectuar una reclasificación de los Clientes en atención a su comportamiento u otras variables. Las tarifas estarán disponibles en los tarifarios del banco y sitio www.bci.cl, y que el Cliente podrá consultar.
                                                            </fo:inline>
                                        </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													17.	Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuarán a la dirección de correo electrónico que el cliente haya informado al Banco y éste haya registrado. En su defecto, se remitirán por escrito al último domicilio que tenga registrado, ya sea por carta o en los estados de cuenta o cartolas o por Internet. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													18.	El Cliente declara haber recibido el volante que contiene la información atingente a las empresas que prestan los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el pago de estas obligaciones. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													19.	Servicio al Cliente Bci.- En caso que el Cliente quisiera formular alguna consulta o reclamo, podrá hacerlo por teléfono; a través de la página web del Banco; o  personalmente en cualesquiera de sus oficinas o sucursales Bci y Bci Nova.  Mayor información podrá encontrar en www.bci.cl, www.tbanc.cl o www.bcinova.cl
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													20.	El Contrato no cuenta con Sello Sernac.
												</fo:inline>
										</fo:block>
									    <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
										</fo:block>
												<fo:table table-layout="fixed">
												<fo:table-column column-width="17cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >
																<fo:block font-size="12pt" padding-top="2pt" padding-left="1pt">
																	<fo:inline start-indent="2pt" text-decoration="underline">
																		COMISIÓN LINEA DE EMERGENCIA (LCE)
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Comisión de Renovación: Comisión de cobro semestral. El primer cobro se activa con la primera utilización del producto. En dicho caso la tarifa asociada es de UF 3 en cada renovación (**)
												</fo:inline>
											</fo:block>
										</fo:block>
										<fo:block text-align="left" break-after="page"></fo:block>
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="3cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >									
																<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																		<xsl:if test="lineaEmergencia/oficina = '247'">											
																			<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>
																		<xsl:if test="lineaEmergencia/oficina != '247'">											
																			<fo:external-graphic  height="50pt" width="90pt">
																				<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
																			</fo:external-graphic>
																		</xsl:if>																							
																</fo:block>										
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  &#0160;  
											</fo:inline>
										</fo:block>  
										<fo:block font-size="8pt">
											<fo:table border-collapse="collapse">
											  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black"/>
											  <fo:table-column column-width="68mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black"/>
											  <fo:table-column column-width="68mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-bottom="0.5pt solid black" border-right="0.5pt solid black"/>
											  <fo:table-body>
												<fo:table-row>
												  <fo:table-cell border-bottom="0.5pt solid black" >
													<fo:block space-after="0.1cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Seguro</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block space-after="0.1cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Cobertura</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block space-after="0.1cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Prima</fo:block>
												  </fo:table-cell>
												</fo:table-row>
												<fo:table-row>
												  <fo:table-cell border-bottom="0.5pt solid black" border-left="0.5pt solid black">
													<fo:block space-after="0.5cm"/>
													<fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" font-weight="bold">Desgravamen</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">Cubre el cupo utilizado de la LCE, con un tope máximo correspondiente al cupo autorizado.</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">0,324% por semestre sobre cupo aprobado, con prima mínima de UF 0,17 y máximo de UF 3</fo:block>
												  </fo:table-cell>
												</fo:table-row>
											  </fo:table-body>
											</fo:table>
												<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="10%"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block text-align="center" >&#0160; </fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">          
																	<fo:inline font-size="11pt">                
																	(*)El Cliente y el Banco acuerdan que este último podrá aumentar el monto de las líneas una vez al año, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o más de su cupo disponible en algún mes del año. El Banco informará el aumento, por correo electrónico o a través de cualquier otro medio de comunicación.
																	</fo:inline>	
																</fo:block>
																<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																	<fo:inline font-size="11pt">  																	
																	(**) Comisión exenta de IVA.                                                
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>	
													</fo:table-body>	
												</fo:table>	
										</fo:block>
					                    <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
					                    </fo:block>   
                                        <fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt" text-decoration="underline" >                
												Declaración del cliente:
	                                       </fo:inline>
										   <fo:inline font-size="11pt">                
												Es mi voluntad que toda comunicación o aviso a que el Banco se encuentre obligado con motivo de lo establecido en este contrato, sea remitido a la dirección de correo electrónico, indicada al final del presente contrato. 
	                                       </fo:inline>
                                        </fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  &#0160;  
											</fo:inline>
										</fo:block> 										
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  Monto LCE contratada: &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
															  N° Cuenta Corriente asociada: &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/> 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
										</fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt" text-decoration="underline">                
                                                Individualización de las partes:
                                            </fo:inline>
										</fo:block>                                                                                               
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												 Nombre Cliente o Titular (1): &#0160; <xsl:value-of select="lineaEmergencia/nombreTitular"/> 
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												Cédula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutTitular"/>
                                            </fo:inline>
                                        </fo:block>              
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
													Dirección Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioTitular"/>
                                            </fo:inline>
                                        </fo:block>      
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Comuna: &#0160; 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Región: &#0160; 
											</fo:inline>
										</fo:block>					
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												Correo y/o Casilla Electrónica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoTitular"/>
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												N° de Teléfono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularTitular"/>
                                            </fo:inline>
                                        </fo:block>    
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												&#0160;
                                            </fo:inline>
                                        </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													 Nombre Cliente o Titular (2): &#0160; <xsl:value-of select="lineaEmergencia/nombreDirecto"/> 
												</fo:inline>
											</fo:block>        
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Cédula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutDirecto"/> 
												</fo:inline>
											</fo:block>              
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Dirección Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioDirecto"/>
												</fo:inline>
											</fo:block>      
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Comuna: &#0160; 
												</fo:inline>
											</fo:block>
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Región: &#0160; 
												</fo:inline>
											</fo:block>					
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Correo y/o Casilla Electrónica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoDirecto"/>
												</fo:inline>
											</fo:block>        
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													N° de Teléfono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularDirecto"/>
												</fo:inline>
											</fo:block>    
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													&#0160;
												</fo:inline>
											</fo:block> 
										<fo:block space-after="1cm" font-size="11pt">
									    	<fo:table table-layout="center">
									    		<fo:table-column column-width="17cm"/>
									    		<fo:table-body>
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="left">Banco: Banco de Crédito e Inversiones  </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Rut N°: 97.006.000-6 </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Domicilio: Avenida El Golf 125, Las Condes, Santiago  </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Representante o Apoderado: <xsl:value-of select="lineaEmergencia/nombreApoderado"/></fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
												</fo:table-body>	
											</fo:table>	
									    	<fo:table table-layout="center">
									    		<fo:table-column column-width="8cm"/>
												<fo:table-column column-width="8cm"/>
									    		<fo:table-body>											
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >&#0160; </fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
												    <fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >&#0160; </fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>		
													<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >&#0160; </fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>					
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >__________________________</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell>
									    					<fo:block text-align="center" >Firma Titular (1)</fo:block>
									    				</fo:table-cell>
									    				<fo:table-cell>
									    					<fo:block text-align="center">Firma Titular (2)</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
													<fo:table-row>
														<fo:table-cell number-columns-spanned="2">
															<fo:block text-align="center">
																<fo:external-graphic>
																	<xsl:attribute name="src">
																		<xsl:value-of select="lineaEmergencia/rutaFirma"/>
																	</xsl:attribute>
																</fo:external-graphic>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>
									    			<fo:table-row>									    				
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block text-align="center">__________________________</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    			<fo:table-row>
									    				<fo:table-cell number-columns-spanned="2">
									    					<fo:block text-align="center" font-weight="bold">Firma Banco</fo:block>
									    				</fo:table-cell>
									    			</fo:table-row>
									    		</fo:table-body>
									    	</fo:table>
									    </fo:block>
										<fo:block text-align="right" line-height="12pt">
											<fo:inline font-size="11pt" text-align="right">                
													En _______________________ a &#0160; <xsl:value-of select="lineaEmergencia/diaApertura"/> &#0160;  de &#0160; <xsl:value-of select="lineaEmergencia/mesApertura"/> &#0160; de &#0160; <xsl:value-of select="lineaEmergencia/anoApertura"/>   
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				 </fo:block>
			</fo:flow>
		</fo:page-sequence>	 	  
<!-- FIN COPIA Cliente -->    	
<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">000000</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">11pt</xsl:variable>
<!-- Variables -->
	<fo:page-sequence master-reference="default-page">
				<fo:flow flow-name="xsl-region-body">
				<fo:table text-align="center" table-layout="fixed">
					<fo:table-column column-width="3cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >									
									<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<xsl:if test="lineaEmergencia/oficina = '247'">											
												<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
												</fo:external-graphic>
											</xsl:if>
											<xsl:if test="lineaEmergencia/oficina != '247'">											
												<fo:external-graphic  height="50pt" width="90pt">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
												</fo:external-graphic>
											</xsl:if>																							
									</fo:block>										
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="18cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="center">
											<fo:inline font-size="11pt" font-weight="bold" >                
													SOLICITUD DE CREDITO
											</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:table table-layout="fixed">
					<fo:table-column column-width="8.5cm" />
					<fo:table-column column-width="8.5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									N° OPERACIÓN: ___________________
								</fo:block>
								<fo:block space-after="0.2cm"></fo:block>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									OFICINA: &#0160; <xsl:value-of select="lineaEmergencia/oficinaEjecutivo"/>  							
								</fo:block>
								<fo:block space-after="0.2cm"></fo:block>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									FECHA: &#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
								</fo:block>
								<fo:block space-after="0.2cm"></fo:block>
								<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
									EJECUTIVO: &#0160; <xsl:value-of select="lineaEmergencia/userEjecutivo"/>  							
								</fo:block>
								</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" font-weight="bold" >
										DATOS DEL SOLICITANTE
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Nombre o razon social del cliente
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:block space-after="0,5cm"></fo:block>
					<!-- tabla 1 -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Domicilio
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Comuna
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Ciudad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fono
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<!-- Fin tabla 1-->
					<!-- tabla 2-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/fechaNacimiento"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cédula Nacional de Identidad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha de Nacimiento
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cta. Cte. Nº
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 2 -->
					<!-- Inicio Tabla 3 -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" border-start-width="0.25pt" border-end-width="0.25pt" font-weight="bold" >
										ANTECEDENTES DEL CREDITO
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
					    </fo:table-body>
					</fo:table>
				<!-- Fin Tabla 3 -->	
				<!-- tabla 4-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="6cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="6cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Línea de Emergencia
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha Curce
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Tipo Crédito
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Monto Solicitado
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 4 -->	
					<!-- tabla 5-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="8cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="8cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Forma de Pago
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Garantía Ofrecida
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 5 -->	
					<!-- tabla 6-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="11cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Objetivo del Crédito
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 6 -->	
					<!-- tabla 6-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="2.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="2cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="1.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha 1er. Vencto.
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Vencimiento (1 solo vcto.)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Día de Pago (Créd. Cuotas)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Número Cuotas
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Tasa Spread
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Tasa Total (inicial)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										DL.3475
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 6 -->
					<!-- Tabla 7 -->	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" border-start-width="0.25pt" border-end-width="0.25pt" font-weight="bold" >
										DATOS DEL AVAL
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" border-start-width="0.25pt" border-end-width="0.25pt">
										Nombre completo del Aval
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					    </fo:table-body>
					</fo:table>
					<!-- Fin Tabla 7 -->	
					<!-- Tabla 8 -->
					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="1cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Domicilio
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Comuna
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Ciudad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fono
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<!-- Fin tabla 8-->
					<!-- Tabla 9-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="0.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cédula Nacional de Identidad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Fecha de Nacimiento
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Cta. Cte. Nº
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 9 -->
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row >
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" >
									<fo:inline font-size="11pt"> 
										Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Crédito e Inversiones,
										me comprometo a conservar incólume el patrimonio declarado en el o los estados de situación y me obligo a
										comunicarles por escrito y con la debida anticipación, todo hecho, acto o contrato que pueda disminuir o
										extinguir mis cauciones o el valor declarado de mi patrimonio.
										</fo:inline>
									</fo:block>
									<fo:block>
										<fo:inline font-size="12pt">
											&#0160;
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row >
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
										Faculto expresamente al BANCO DE CREDITO E INVERSIONES para cargar en cualquiera de mi(s) cuenta(s)
										corriente(s) las sumas adeudadas provenientes del préstamo solicitado incluyendo capital, intereses y gastos,
										como así también, en el caso de no ser cancelado oportunamente o no existir fondos disponibles en la(s)
										cuenta(s) corriente(s), aplicar a su pago cualquier otro crédito a mi favor que exista en el BANCO, ya sean
										saldos en cuenta vista, depósitos a la vista, depósitos a plazo, valores en custodia, fondos mutuos en BCI
										Administradora de Fondos Mutuos S.A. etc.. 
										</fo:inline>
									</fo:block>
									<fo:block>
										<fo:inline font-size="12pt">
											&#0160;
										</fo:inline>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt"> 
										Asimismo declaro bajo juramento que todos los antecedentes
										presentados son fidedignos y que conozco el texto del artículo 160 de la Ley General de Bancos.
										Autorizo al Banco de Crédito e Inversiones para pedir para su uso exclusivo, en los términos del artículo 4° de la
										ley 19.628, a la Administradora de Fondos de Pensiones donde efectúo mis cotizaciones previsionales, y autorizo
										asimismo a ésta, para entregar directamente al Banco o a través de Previred S.A., información sobre las aludidas
										cotizaciones de los últimos 12 meses precedentes a cualquiera solicitud de cualquier tipo de crédito o de otro
										servicio bancario para los que tal información y la que derive de aquella, pueda ser de utilidad para evaluar el
										otorgamiento del préstamo o servicio, sea de la naturaleza que fuere.
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="2cm"></fo:block>
							</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										1 - 4
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
<!-- Fin 1º Pagina de Contrato-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
			<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >									
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
													<xsl:if test="lineaEmergencia/oficina = '247'">											
														<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>											
													<xsl:if test="lineaEmergencia/oficina != '247'">											
														<fo:external-graphic  height="50pt" width="90pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>																							
											</fo:block>										
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
				 <fo:block font-size="8pt">
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell>
									<fo:block>
										<fo:inline font-size="12pt">
											&#0160;
										</fo:inline>
									</fo:block>
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											En este acto otorgamos mandato al Banco de Crédito e Inversiones para
											que en su nombre y representación, incluso con facultades expresas para autocontratar y obrando a través de
											cualquiera de sus apoderados o en quien el Banco delegue, suscriba y/o complete uno o más pagarés, y
											reconozca deudas en beneficio y a la orden del Banco de Crédito e Inversiones, todo ello con el propósito de
											documentar en esta forma el o los saldos deudores, por los montos de capital, intereses, costas y comisiones,
											que se originen con motivo del cobro de boletas de garantía tomadas por el suscrito y emitidas por el Banco, al
											amparo de la Línea de Crédito vigente. El o los pagarés que se suscriban en virtud de este mandato podrán
											extenderse a la vista o a plazo y en caso de no pago devengarán la tasa de interés máxima convencional para
											operaciones de crédito de dinero en moneda nacional. Asimismo, por el presente instrumento facultamos al
											Banco de Crédito e Inversiones para que, en conformidad a lo previsto en el Artículo 11 y
											107 de la Ley 18092 del año 1982 sobre Letra de Cambio y Pagaré, incorpore en el o los instrumentos mercantiles
											que documenten los créditos otorgados en virtud de esta solicitud de crédito o el Contrato de Apertura de Línea
											de Crédito destinada a cubrir eventuales pagos de boletas de garantía, la totalidad de las menciones exigidas por
											la Ley, como por ejemplo, su fecha de emisión, de vencimiento, la cantidad adeudada, la tasa de interés u otras,
											determinando en él nuestra obligación de pagar la cantidad de dinero solicitada en este acto o aquella que en
											definitiva apruebe el Banco al dorso de esta solicitud, si dicha cantidad fuere diferente. Liberamos al Banco de
											Crédito e Inversiones de la obligación de rendir cuenta de su gestión.
											</fo:inline>
										</fo:block>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>										
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Faculto (facultamos) al Banco para aceptar instrucciones o solicitudes que yo imparta a través
											medios remotos, especialmente vía red internet u otros, vía electrónica, satelital o telefónica, que estén
											disponibles, y reconozco (reconocemos) que tales instrucciones realizadas por dichos medios constituye
											manifestación expresa de mi (nuestra) voluntad, de aceptar las condiciones y modalidades bajo las cuales se
											presta el servicio, como también de las responsabilidades que asumo (asumimos) al hacer uso de tales canales y
											de la información contenida en ellos. Asimismo, autorizo (autorizamos) al Banco para que me (nos) provea en
											forma remota, de todos aquellos servicios en que normalmente se requiere mi (nuestra) presencia física,
											asimilando como medio válido de autorización cuando así lo requiera, a la firma electrónica, mi clave secreta que
											es confidencial, personal e intransferible.
											</fo:inline>
										</fo:block>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>										
										
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Reconozco(reconocemos) haber recibido por parte del Banco de Crédito e Inversiones información detallada de
											las comisiones que el Banco cobra por concepto de otorgamiento de crédito y procesos asociados a éste, como
											en el caso de reprogramación, prórroga y reestructuración entre otros.
											</fo:inline>
										</fo:block>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>										
										
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Declaro (Declaramos) haber recibido información detallada y aceptar que existen recargos en caso de mora o
											simple retardo en el pago de la obligación de crédito de dinero de que da cuenta la presente solicitud y además
											por concepto de la cobranza extrajudicial de créditos impagos, incluyendo honorarios, a partir de la fecha que se
											indica más adelante, los cuales serán cobrados por la empresa &#x201C;Servicios de Normalización y Cobranza
											-Normaliza S.A.&#x201D; o por aquella que el BANCO designare en su oportunidad la que actuará en nombre y en
											representación e interés del BANCO en las gestiones de cobranza extrajudicial.
											</fo:inline>
										</fo:block>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>																				
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											La cobranza extrajudicial se efectuará en horario de 8:00 a 20:00 horas.
											</fo:inline>
										</fo:block>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>																				
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Declaro (Declaramos) conocer, y desde luego acepto (aceptamos), que para la empresa designada al efecto
											pueda realizar la cobranza extrajudicial es imprescindible que el BANCO suministre a dicha empresa,
											antecedentes tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición
											estén asociados a éstos, como de los antecedentes comerciales de los deudores, tales como, nombres y
											apellidos, cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etcétera.
											</fo:inline>
										</fo:block>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>																				
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
									<fo:table-cell> 
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Los honorarios y gastos por las gestiones de cobranza ascenderán a los porcentajes que seguidamente se
											indican, aplicados sobre el total de la deuda, o la cuota vencida según el caso, conforme a la siguiente escala
											progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento
											y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes
											indicados se aplicarán como sigue: Créditos de Consumo/Tarjetas de Crédito &#x2013; Persona Naturales: Después de
											transcurridos 15 días corridos de atraso (mora) desde el día del vencimiento de la obligación. Créditos
											Comerciales &#x2013; General/Tarjetas De Crédito &#x2013; Personas Jurídicas: Después de transcurridos 5 días corridos de
											atraso (mora) desde el día del vencimiento de la obligación.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										2 - 4
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
<!-- Otra Pagina-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
			<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="3cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell >									
											<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
													<xsl:if test="lineaEmergencia/oficina = '247'">											
														<fo:external-graphic scaling="uniform" height="50pt" width="90pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>
													<xsl:if test="lineaEmergencia/oficina != '247'">											
														<fo:external-graphic  height="50pt" width="90pt">
															<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
														</fo:external-graphic>
													</xsl:if>																							
											</fo:block>										
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
				 <fo:block font-size="8pt">
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
							<fo:table-row >
									<fo:table-cell>
										<fo:block>
											<fo:inline font-size="12pt">
												&#0160;
											</fo:inline>
										</fo:block>																			
										<fo:block  line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt"> 
											Las tarifas anteriores podrán ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de
											pago exceda de un año, siempre que tales cambios se avisen con una anticipación mínima de dos períodos de
											pago. Formalizo (Formalizamos) el presente instrumento considerando que las tarifas indicadas se basan en la
											fiel interpretación de la reglamentación legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y
											además normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por
											concepto de la cobranza extrajudicial de los créditos impagos, incluyendo honorarios y costas podrán ser
											cobrados con cargo directo en alguna de la (s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s)
											mantenida(s) por mí (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u
											obligación morosa o impaga.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:block space-before="5cm" space-after="2cm" font-size="11pt">
				    	<fo:table table-layout="center">
				    		<fo:table-column column-width="7cm"/>
				    		<fo:table-column column-width="10cm"/>
				    		<fo:table-body>
				    			<fo:table-row>
				    				<fo:table-cell>
				    					<fo:block text-align="center" >__________________________</fo:block>
				    				</fo:table-cell>
				    				<fo:table-cell>
				    					<fo:block text-align="center">__________________________________________</fo:block>
				    				</fo:table-cell>
				    			</fo:table-row>
				    			<fo:table-row height="5mm">
				    				<fo:table-cell>
				    					<fo:block text-align="center" >Nombre y Firma Aval</fo:block>
				    				</fo:table-cell>
				    				<fo:table-cell>
				    					<fo:block text-align="center">Nombre y Firma(s) Solicitante o Representante Legal</fo:block>
				    				</fo:table-cell>
				    			</fo:table-row>
				    		</fo:table-body>
						</fo:table>
						<fo:table table-layout="fixed">
							<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="10cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="7cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell> 
										<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
											3 - 4
										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>
							</fo:table-body>
						</fo:table>	


				    </fo:block>
				</fo:block>
<!-- Separador para Saltar a otra Pagina-->
			<fo:block text-align="left" break-after="page">
			</fo:block>
				<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="7cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:table text-align="center" table-layout="fixed">
									<fo:table-column column-width="3cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >									
													<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
															<xsl:if test="lineaEmergencia/oficina = '247'">											
																<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
																	<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>													
															<xsl:if test="lineaEmergencia/oficina != '247'">											
																<fo:external-graphic  height="50pt" width="90pt">
																	<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
																</fo:external-graphic>
															</xsl:if>																							
													</fo:block>										
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								</fo:table-cell>
								</fo:table-row>
                                <fo:table-row>
									<fo:table-cell>
										<fo:block space-after="1cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block space-after="1cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="1cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="left" color="{$txt}" >
											N° OPERACIÓN: __________________
										</fo:block>
										<fo:block space-after="0.1cm"></fo:block>
										<fo:block font-size="11pt" text-align="left" color="{$txt}" >
											Fecha de Suscripcion: &#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/> 							
										</fo:block>
										<fo:block space-after="0.1cm"></fo:block>
										<fo:block font-size="11pt" text-align="left" color="{$txt}" >
											Monto: &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> 	
										</fo:block>
										<fo:block space-after="0.1cm"></fo:block>
										<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
											Deudor:&#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>  							
										</fo:block>
										<fo:block space-after="0.1cm"></fo:block>
										<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
											RUT	:  &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>  							
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="1cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block space-after="1cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								</fo:table-body>
							</fo:table>	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell> 
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										VISACION CLIENTE
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="17cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:table table-layout="fixed">
						<fo:table-column column-width="6cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-column column-width="4.5cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Resolución / Recomendación:
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
									&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Monto Aprobado 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>

								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>

								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>

								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" ></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="16cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									_______________________________________________________________________________							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
							<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<!-- Tabla 1-->
						<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="3.5cm" />
						<fo:table-column column-width="5cm" />

						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Ej. Comercial
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										Jefe Oficina
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
											&#0160; <xsl:value-of select="lineaEmergencia/userEjecutivo"/> 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-color="black" border-style="solid"> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>								
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 1 -->
					<!-- Tabla 2-->
					<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										V° B° Fecha
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row >
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										4 - 4
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>								
					<!-- Fin Tabla 9 -->
				 </fo:block>
 <!-- TARIFARIO COPIA BANCO-->
		<fo:block text-align="left" break-after="page">
		</fo:block>
		<fo:block>
			<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell >									
							<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
									<xsl:if test="lineaEmergencia/oficina = '247'">											
										<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
									<xsl:if test="lineaEmergencia/oficina != '247'">											
										<fo:external-graphic  height="50pt" width="90pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>																							
							</fo:block>										
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:table text-align="center" table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell > 
							<fo:block space-after="0.5cm"></fo:block>
						</fo:table-cell>
					</fo:table-row>	
					<fo:table-row>
						<fo:table-cell >
							<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
										<fo:inline  font-weight="bold"  start-indent="2pt">
								TARIFARIO LÍNEA DE CREDITO DE EMERGENCIA
								</fo:inline>
									</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
			<fo:block space-after="1cm"></fo:block>
			<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block ></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="right" color="{$txt}" >
									Fecha
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="black" border-style="solid">
								<fo:block font-size="11pt" text-align="center" color="{$txt}" >
									&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/> 
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>	
				<fo:block space-after="0.5cm"></fo:block>
				<!-- Tabla de datos Basicos -->
				<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block font-size="11pt" text-align="left" color="{$txt}" font-weight="bold">
									Datos Básicos del Cliente
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>	
						<fo:table-row>
							<fo:table-cell border-color="black" border-style="solid">	
							<!-- Tabla 1 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="15cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Nombres
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/soloNombre"/> 
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 1 Dat Basicos -->
								<!-- Tabla 2 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Apellido Paterno
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
													<fo:block>
														Apellido Materno
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/soloApP"/> 
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block>&#0160;</fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid" >												
													<fo:block font-size="11pt" text-align="left" color="{$txt}">
														&#0160; <xsl:value-of select="lineaEmergencia/soloApM"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 2 Dat Basicos -->
								<!-- Tabla 3 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="5cm"/>
									<fo:table-column column-width="11cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Cedula de Identidad
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="center" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 3 Dat Basicos -->
								<!-- Tabla 4 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="15cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Dirección particular
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 4 Dat Basicos -->
								<!-- Tabla 5 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Comuna
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
													<fo:block>
														Ciudad
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block>&#0160;</fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid" >												
													<fo:block>
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 5 Dat Basicos -->
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- FIN Tabla Datos Basicos -->
				<fo:block space-after="0.5cm"></fo:block>
				<!-- Resumen Linea de Credito -->
				<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>								
						<fo:table-row>
							<fo:table-cell >
								<fo:block font-size="11pt" text-align="left" color="{$txt}" font-weight="bold">
									Resumen Línea de Crédito de Emergencia
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>		
						<fo:table-row>
							<fo:table-cell border-color="black" border-style="solid">	
							<fo:block space-after="0.3cm"></fo:block>
							<!-- Tabla 1 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="9cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														N° de Cuenta Corriente Relacionada
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 1 Linea de Credito -->
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 2 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="10cm"/>
									<fo:table-column column-width="6cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Monto asignado de Línea de Crédito de Emergencia
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
													  &#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																						
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 2 Linea de credito -->
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 3 Linea de credito -->
								
								<!-- FIN Tabla 3 Linea de credito -->
								<fo:block space-after="0.5cm"></fo:block>
								<!-- Tabla 4 DLinea de Credito -->
								<!-- FIN Tabla 4 Linea de Credito -->
								<fo:block space-after="0.5cm"></fo:block>
								<!-- Tabla 5 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="10cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Tarifa de Renovación Semestral
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/comisionSemestral"/> 
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 5 Linea de Credito -->
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 6 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="15cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Observación
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block space-after="2cm" >
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 5 Linea de Credito -->
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- FIN Tabla Linea de Credito -->
				<fo:block space-after="4cm"></fo:block>
				<!-- tabla Para firma de cliente -->
				<fo:table table-layout="fixed">
					<fo:table-column column-width="16cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="center" color="{$txt}" >
								_________________________
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="center" color="{$txt}" >
								Firma Cliente  							
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="1cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
								Copia Banco  				
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
<!-- Fin tabla Para firma de cliente -->
<!-- FIN TARIFARIO COPIA BANCO -->
<!-- TARIFARIO COPIA CLIENTE -->
<fo:block text-align="left" break-after="page"></fo:block>
		</fo:block>
		
			<fo:table text-align="center" table-layout="fixed">
			<fo:table-column column-width="3cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell >									
							<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
									<xsl:if test="lineaEmergencia/oficina = '247'">											
										<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
									<xsl:if test="lineaEmergencia/oficina != '247'">											
										<fo:external-graphic  height="50pt" width="90pt">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>																							
							</fo:block>										
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<fo:table text-align="center" table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell > 
							<fo:block space-after="0.5cm"></fo:block>
						</fo:table-cell>
					</fo:table-row>	
					<fo:table-row>
						<fo:table-cell >
							<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
										<fo:inline  font-weight="bold"  start-indent="2pt">
								TARIFARIO LÍNEA DE CREDITO DE EMERGENCIA
								</fo:inline>
									</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
			<fo:block space-after="1cm"></fo:block>
			<fo:table table-layout="fixed">
					<fo:table-column column-width="9cm" />
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block ></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="right" color="{$txt}" >
									Fecha
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border-color="black" border-style="solid">
								<fo:block font-size="11pt" text-align="center" color="{$txt}" >
									&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>	
				<fo:block space-after="0.5cm"></fo:block>
				<!-- Tabla de datos Basicos -->
				<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									Datos Básicos del Cliente
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>	
						<fo:table-row>
							<fo:table-cell border-color="black" border-style="solid">	
							<!-- Tabla 1 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="15cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Nombres
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/soloNombre"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 1 Dat Basicos -->								
								<!-- Tabla 2 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Apellido Paterno
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
													<fo:block>
														Apellido Materno
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/soloApP"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block>&#0160;</fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid" >												
													<fo:block font-size="11pt" text-align="left" color="{$txt}">
														&#0160; <xsl:value-of select="lineaEmergencia/soloApM"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 2 Dat Basicos -->								
								<!-- Tabla 3 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="5cm"/>
									<fo:table-column column-width="11cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Cedula de Identidad
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="center" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 3 Dat Basicos -->
								<!-- Tabla 4 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="15cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Dirección particular
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 4 Dat Basicos -->								
								<!-- Tabla 5 Dat Basicos -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Comuna
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell font-size="11pt" text-align="left" color="{$txt}" >												
													<fo:block>
														Ciudad
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block>&#0160;</fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid" >												
													<fo:block>
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell>
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160;
													</fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 5 Dat Basicos -->
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- FIN Tabla Datos Basicos -->
				<fo:block space-after="0.5cm"></fo:block>
				<!-- Resumen Linea de Credito -->
				<fo:table table-layout="fixed">
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>	
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>	
						<fo:table-row>
							<fo:table-cell >
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
									Resumen Línea de Crédito de Emergencia
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="center" >&#0160; </fo:block>
							</fo:table-cell>
						</fo:table-row>	
						<fo:table-row>
							<fo:table-cell border-color="black" border-style="solid">	
							<fo:block space-after="0.3cm"></fo:block>
							<!-- Tabla 1 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="9cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														N° de Cuenta Corriente Relacionada
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 1 Linea de Credito -->
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 2 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="10cm"/>
									<fo:table-column column-width="6cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Monto asignado de Línea de Crédito de Emergencia
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 2 Linea de credito -->
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 3 Linea de credito -->
								
								<!-- FIN Tabla 3 Linea de credito -->
								<fo:block space-after="0.5cm"></fo:block>
								<!-- Tabla 4 DLinea de Credito -->
								
								<!-- FIN Tabla 4 Linea de Credito -->
								<fo:block space-after="0.5cm"></fo:block>
								<!-- Tabla 5 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="7cm"/>
									<fo:table-column column-width="10cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Tarifa de Renovación Semestral
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
															&#0160; <xsl:value-of select="lineaEmergencia/comisionSemestral"/>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 5 Linea de Credito -->
								<fo:block space-after="0.3cm"></fo:block>
								<!-- Tabla 6 Linea de Credito -->
								<fo:table table-layout="fixed" >			
									<fo:table-column column-width="1cm"/>
									<fo:table-column column-width="15cm"/>
									<fo:table-column column-width="1cm"/>
										<fo:table-body>
											<fo:table-row>
												<fo:table-cell >
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block font-size="11pt" text-align="left" color="{$txt}" >
														Observación
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row>
												<fo:table-cell >												
													<fo:block></fo:block>
												</fo:table-cell>
												<fo:table-cell border-color="black" border-style="solid">
													<fo:block space-after="3cm" >
														&#0160;
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >																								
													<fo:block></fo:block>
												</fo:table-cell>
											</fo:table-row>
										</fo:table-body>
									</fo:table>
								<!-- FIN Tabla 5 Linea de Credito -->
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- FIN Tabla Linea de Credito -->
				<fo:block space-after="4cm"></fo:block>
				<!-- tabla Para firma de cliente -->
				<fo:table table-layout="fixed">
					<fo:table-column column-width="16cm" />
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="center" color="{$txt}" >
								_________________________
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="center" color="{$txt}" >
								Firma Cliente  							
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="1cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="11pt" text-align="left" color="{$txt}" >
								Copia Cliente  							
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:block text-align="left" break-after="page"></fo:block>
<!-- Fin tabla Para firma de cliente -->
<!-- FIN TARIFARIO COPIA Cliente -->
<!-- PAGINA de Condiciones CLIENTE-->
<!-- Tabla de Condiciones-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<xsl:if test="lineaEmergencia/oficina = '247'">											
													<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
												<xsl:if test="lineaEmergencia/oficina != '247'">											
													<fo:external-graphic  height="50pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>															
						<fo:table-row >
							<fo:table-cell > 
								<fo:block text-align="center" color="{$txt}" font-size="11pt" font-weight="bold" >
									CONDICIONES Y HONORARIOS DE COBRANZA EXTRAJUDICIAL POR EMPRESA EXTERNA
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block space-after="0.3cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block   text-align="center" color="{$txt}" font-size="11pt" >
									(BANCA PERSONAS - PERSONAS NATURALES Y JURÍDICAS)
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block space-after="0.3cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
					<!-- Fin Tabla-->
					<fo:table text-align="justify"  table-layout="fixed" >
						<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												En base a lo establecido en la Ley de Protección de los Derechos de los Consumidores y en la normativa de la
												Comisión para el Mercado Financiero, se informa al suscrito que existen recargos por
												concepto de cobranza extrajudicial de créditos o cuotas impagas, incluyendo honorarios a cargo del deudor
												según los plazos y productos que se indican más adelante, los cuales serán cobrados por la empresa &#x201C;Servicios
												de Normalización y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuará en nombre y en representación e
												interés del Banco de Crédito e Inversiones en las gestiones de cobranza extrajudicial.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Dicha cobranza extrajudicial que efectuará la empresa Servicios de Normalización y Cobranzas - Normaliza S.A
												será realizada conforme a la Ley, en días hábiles y en horario de 8:00 a 20:00 horas.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Declaro conocer y desde luego acepto, que según lo establecido en la Ley Nº 19.628 sobre Protección de Datos
												de Carácter Personal, para que la empresa Servicios de Normalización y Cobranzas - Normaliza S.A pueda
												realizar la cobranza extrajudicial, el Banco de Crédito e Inversiones suministrará a dicha empresa antecedentes,
												tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén
												asociados a éstos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
												cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etc.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Declaro haber recibido, en forma previa al otorgamiento del crédito, la información sobre el cálculo de honorarios
												que generan la cobranza extrajudicial de los créditos impagos, así como copia fiel de este formulario cuyo original
												suscribo.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Las tarifas de honorarios que se expresan a continuación podrán ser modificadas y en tal caso serán informadas
												a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
												legislación vigente.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
				<!-- Tabla de Condiciones-->
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="10cm" />
					<fo:table-body>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block text-align="center" color="{$txt}" font-size="11pt" >
									TABLA DE HONORARIOS GENERAL.-
								</fo:block>
							</fo:table-cell>
							<fo:table-cell > 
								<fo:block ></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell border-color="black" border-style="solid"> 
								<fo:block >
								</fo:block>
							</fo:table-cell>
							<fo:table-cell > 
								<fo:block></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
					<!-- Fin Tabla-->
					<fo:block space-after="0.5cm"></fo:block>
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Los honorarios por la cobranza extrajudicial para todos los productos ascenderán a los porcentajes aplicados
												sobre el total de la deuda o la cuota vencida, según el caso, conforme a la siguiente escala progresiva:
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>								
								<fo:table-row>
								<!-- Tabla valores -->
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block space-after="0.3cm"></fo:block>
											<!-- Tabla 6 Linea de Credito -->
											<fo:table table-layout="fixed" >			
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="8cm"/>
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="4cm"/>
												<fo:table-column column-width="1cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	MONTO DEUDA O CUOTA MOROSA
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">% HONORARIOS</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2">
																<fo:block space-after="0.3cm"></fo:block>
															 </fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	Obligaciones hasta 10 Unidades de Fomento
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">9%</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	Por la parte que exceda de 10 UF y hasta 50 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">6%</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	Por la parte que exceda de 50 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">3%</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>

													</fo:table-body>
												</fo:table>
												<fo:block space-after="0.3cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												PLAZOS DE APLICACIÓN DE HONORARIOS.-
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2">
										<fo:block space-after="0.3cm"></fo:block>
									 </fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
											<!-- Tabla 6 Linea de Credito -->
												<fo:table table-layout="fixed" >			
													<fo:table-column column-width="0.5cm"/>
													<fo:table-column column-width="16.5cm"/>
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																		 <fo:inline font-size="11pt"> 
																			.
																		 </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				Créditos de Consumo, Créditos Hipotecarios, Tarjetas de Crédito - Personas Naturales y Personas Jurídicas: Después de transcurridos 20 días corridos de atraso (mora) desde el día del vencimiento de la obligación.
																			 </fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row >
																<fo:table-cell > 
																	<fo:block space-after="0.5cm"></fo:block>
																</fo:table-cell>
															</fo:table-row>															
															<fo:table-row>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																		 <fo:inline font-size="11pt"> 
																			.
																		 </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																		 <fo:inline font-size="11pt"> 
																			Créditos Comerciales, después de transcurridos 5 días corridos de atraso (mora) contados desde el día del vencimiento de la obligación, salvo aquellos créditos comerciales amparados por la ley 19.496 sobre Protección a los derechos de los consumidores cuyo plazo será de 20 días.
																		 </fo:inline>
																	 </fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row >
																<fo:table-cell > 
																	<fo:block space-after="0.5cm"></fo:block>
																</fo:table-cell>
															</fo:table-row>																												
												</fo:table-body>
											</fo:table>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="2.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="left">
											 <fo:inline font-size="11pt"> 
												Copia Cliente
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
<!-- PAGINA de Condiciones CLIENTE-->
<!-- PAGINA de Condiciones CLIENTE-->
<!-- Tabla de Condiciones-->
				<fo:block text-align="left" break-after="page"> </fo:block>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >									
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
												<xsl:if test="lineaEmergencia/oficina = '247'">											
													<fo:external-graphic scaling="uniform" height="50pt" width="80pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoTbank.JPG')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
												<xsl:if test="lineaEmergencia/oficina != '247'">											
													<fo:external-graphic  height="50pt" width="90pt">
														<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/LogoBci.jpg')</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>																							
										</fo:block>										
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="17cm" />
					<fo:table-body>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block space-after="0.5cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>															
						<fo:table-row >
							<fo:table-cell > 
								<fo:block text-align="center" color="{$txt}" font-size="11pt" font-weight="bold">
									CONDICIONES Y HONORARIOS DE COBRANZA EXTRAJUDICIAL POR EMPRESA EXTERNA
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block space-after="0.2cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block   text-align="center" color="{$txt}" font-size="11pt" >
									(BANCA PERSONAS - PERSONAS NATURALES Y JURÍDICAS)
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block space-after="0.3cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
					<!-- Fin Tabla-->
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												En base a lo establecido en la Ley de Protección de los Derechos de los Consumidores y en la normativa de la
												Superintendencia de Bancos e Instituciones Financieras, se informa al suscrito que existen recargos por
												concepto de cobranza extrajudicial de créditos o cuotas impagas, incluyendo honorarios a cargo del deudor
												según los plazos y productos que se indican más adelante, los cuales serán cobrados por la empresa &#x201C;Servicios
												de Normalización y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuará en nombre y en representación e
												interés del Banco de Crédito e Inversiones en las gestiones de cobranza extrajudicial.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>																							
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Dicha cobranza extrajudicial que efectuará la empresa Servicios de Normalización y Cobranzas - Normaliza S.A
												será realizada conforme a la Ley, en días hábiles y en horario de 8:00 a 20:00 horas.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>															
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Declaro conocer y desde luego acepto, que según lo establecido en la Ley Nº 19.628 sobre Protección de Datos
												de Carácter Personal, para que la empresa Servicios de Normalización y Cobranzas - Normaliza S.A pueda
												realizar la cobranza extrajudicial, el Banco de Crédito e Inversiones suministrará a dicha empresa antecedentes,
												tanto respecto de los créditos morosos de sus deudores y otros que no estando en dicha condición estén
												asociados a éstos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
												cédula nacional de identidad, rol único tributario, domicilios, direcciones y teléfonos, etc.

											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>								
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Declaro haber recibido, en forma previa al otorgamiento del crédito, la información sobre el cálculo de honorarios
												que generan la cobranza extrajudicial de los créditos impagos, así como copia fiel de este formulario cuyo original
												suscribo.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Las tarifas de honorarios que se expresan a continuación podrán ser modificadas y en tal caso serán informadas
												a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
												legislación vigente.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.3cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
				<!-- Tabla de Condiciones-->
				<fo:table table-layout="fixed" >
					<fo:table-column column-width="7cm" />
					<fo:table-column column-width="10cm" />
					<fo:table-body>
						<fo:table-row >
							<fo:table-cell > 
								<fo:block text-align="center" color="{$txt}" font-size="11pt" >
									TABLA DE HONORARIOS GENERAL.-
								</fo:block>
							</fo:table-cell>
							<fo:table-cell > 
								<fo:block ></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row >
							<fo:table-cell border-color="black" border-style="solid"> 
								<fo:block ></fo:block>
							</fo:table-cell>
							<fo:table-cell > 
								<fo:block ></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
					</fo:table>
					<!-- Fin Tabla-->
					<fo:block space-after="0.2cm"></fo:block>
					<fo:table text-align="justify" table-layout="fixed">
						<fo:table-column column-width="17cm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Los honorarios por la cobranza extrajudicial para todos los productos ascenderán a los porcentajes aplicados
												sobre el total de la deuda o la cuota vencida, según el caso, conforme a la siguiente escala progresiva:
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
								<!-- Tabla valores -->
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block space-after="0.2cm"></fo:block>
											<!-- Tabla 6 Linea de Credito -->
											<fo:table table-layout="fixed" >			
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="8cm"/>
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="4cm"/>
												<fo:table-column column-width="1cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	MONTO DEUDA O CUOTA MOROSA
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">% HONORARIOS</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell border-color="black" border-style="solid">												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell number-columns-spanned="2">
																<fo:block space-after="0.3cm"></fo:block>
															 </fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	Obligaciones hasta 10 Unidades de Fomento
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">9%</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	Por la parte que exceda de 10 UF y hasta 50 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">6%</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>
														<fo:table-row>
															<fo:table-cell >
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block font-size="11pt" text-align="left" color="{$txt}" >
																	Por la parte que exceda de 50 UF
																</fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block></fo:block>
															</fo:table-cell>
															<fo:table-cell >												
																<fo:block font-size="11pt" text-align="left" color="{$txt}">3%</fo:block>
															</fo:table-cell>
															<fo:table-cell >
																<fo:block ></fo:block>
															</fo:table-cell>
														</fo:table-row>

													</fo:table-body>
												</fo:table>
												<fo:block space-after="0.2cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
										<fo:block space-after="0.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												PLAZOS DE APLICACIÓN DE HONORARIOS.-
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2">
										<fo:block space-after="0.3cm"></fo:block>
									 </fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell > 
												<!-- Tabla 6 Linea de Credito -->
												<fo:table table-layout="fixed" >			
													<fo:table-column column-width="0.5cm"/>
													<fo:table-column column-width="16.5cm"/>
														<fo:table-body>
															<fo:table-row>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																		 <fo:inline font-size="11pt"> 
																			.
																		 </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																			 <fo:inline font-size="11pt"> 
																				Créditos de Consumo, Créditos Hipotecarios, Tarjetas de Crédito - Personas Naturales y Personas Jurídicas: Después de transcurridos 20 días corridos de atraso (mora) desde el día del vencimiento de la obligación.
																			 </fo:inline>
																	</fo:block>
																</fo:table-cell>
															</fo:table-row>
															<fo:table-row>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																		 <fo:inline font-size="11pt"> 
																			.
																		 </fo:inline>
																	</fo:block>
																</fo:table-cell>
																<fo:table-cell>
																	<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
																		 <fo:inline font-size="11pt"> 
																			Créditos Comerciales, después de transcurridos 5 días corridos de atraso (mora) contados desde el día del vencimiento de la obligación, salvo aquellos créditos comerciales amparados por la ley 19.496 sobre Protección a los derechos de los consumidores cuyo plazo será de 20 días.
																		 </fo:inline>
																	 </fo:block>
																</fo:table-cell>
															</fo:table-row>

												</fo:table-body>
											</fo:table>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					<!-- PAGINA de Condiciones CLIENTE-->
					<fo:block space-after="0.2cm"></fo:block>
					<fo:table table-layout="center">
						<fo:table-column column-width="12cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell > 
									<fo:block space-after="0.2cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										 <fo:inline font-size="11pt" font-weight="bold"> 
											NOMBRE O RAZON SOCIAL: &#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>
										 </fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block ></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block text-align="left">
									 <fo:inline font-size="11pt" font-weight="bold"> 
										RUT: &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
									</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:block space-after="0.1cm"></fo:block>
					<fo:table table-layout="center">
						<fo:table-column column-width="17cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										 <fo:inline font-size="11pt" font-weight="bold"> 
											REPRESENTANTE LEGAL
										 </fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										 <fo:inline font-size="11pt" font-weight="bold"> 
											____________________________________RUT__________________
										 </fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										 <fo:inline font-size="11pt" font-weight="bold"> 
											REPRESENTANTE LEGAL
										 </fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										 <fo:inline font-size="11pt" font-weight="bold"> 
											____________________________________RUT__________________
										 </fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.3cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										<fo:table table-layout="center">
										<fo:table-column column-width="2cm"/>
										<fo:table-column column-width="4cm"/>
										<fo:table-column column-width="3cm"/>
										<fo:table-column column-width="8cm"/>
										<fo:table-body>
											<fo:table-row >
												<fo:table-cell > 
													<fo:block space-after="0.2cm"></fo:block>
												</fo:table-cell>
											</fo:table-row>
											<fo:table-row >
												<fo:table-cell >
													<fo:block text-align="left" >
															 <fo:inline font-size="11pt" font-weight="bold"> 
																Fecha 
															 </fo:inline>
													</fo:block>
												</fo:table-cell>
												<fo:table-cell >
													<fo:block text-align="left" >
														 <fo:inline font-size="11pt" > 
															&#0160; <xsl:value-of select="lineaEmergencia/fechaActual"/>
														 </fo:inline>
													</fo:block>
												 </fo:table-cell>
												 <fo:table-cell>
													 <fo:block text-align="left" >
														 <fo:inline font-size="11pt" font-weight="bold"> 
															Crédito/Operación
														 </fo:inline>
														</fo:block>
												 </fo:table-cell>
												  <fo:table-cell>
													<fo:block text-align="center" >
														 <fo:inline font-size="11pt" > 
															________________________________
														 </fo:inline>
													</fo:block>
												 </fo:table-cell>
											 </fo:table-row>
										 </fo:table-body>
										</fo:table>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="0.6cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="center" >
										 <fo:inline font-size="11pt"> 
											___________________________________
										 </fo:inline> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="center" >
										 <fo:inline font-size="11pt" font-weight="bold"> 
											Firma Cliente
										 </fo:inline> 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block text-align="left" >
										 <fo:inline font-size="11pt"> 
											Copia Banco  
										 </fo:inline> 										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
		</fo:flow>
	</fo:page-sequence>
					
<!-- PAGINA de Condiciones CLIENTE-->
<!-- INICIO PROPUESTA SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE) COPIA CLIENTE -->
	<fo:page-sequence master-reference="solicitud">
		<fo:static-content flow-name="copia">
			<fo:block font-size="11pt" text-align="right" font-weight="bold">
				<xsl:text>COPIA: CLIENTE</xsl:text>
			</fo:block>
		</fo:static-content>
		<fo:flow flow-name="xsl-region-body" font-family="Arial Narrow, Helvetica" font-stretch="condensed">
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												PROPUESTA SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN CUENTA 
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->

<!-- tabla asegurable -->
	<fo:block space-after="0.2cm"></fo:block>	
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="14cm"/>
						<fo:table-column column-width="5.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#E0E0E0">
										<fo:block font-size="11pt" padding-top="0.1cm"  text-align="left" font-weight="bold">
												&#0160;ASEGURABLE (Solo personas naturales)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="15pt" padding-top="0.1cm" >
												&#0160;Folio N°
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="4.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-top="0.1cm" padding-left="0.1cm">
												&#0160;DEUDOR DIRECTO
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" padding-top="0.1cm">
										<fo:block font-size="11pt"  text-align="left">
												AVAL
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="11cm"/>
						<fo:table-column column-width="8.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
												&#0160;Nombre Completo:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;R.U.T.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="1.5cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2.3cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
												&#0160;Sexo: 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
												&#0160; Masculino
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
												&#0160; Femenino
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5.5cm"/>
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="9.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;Fecha Nacimiento:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;Estado Civil:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;E-mail:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;Domicilio:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="7.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Comuna:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Ciudad:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Teléfono:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table  table-layout="fixed" text-align="justify" >
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="18.7cm"/>
							<fo:table-body>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="7pt" margin-left="0.1cm">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" >
										<fo:block line-height="11pt" space-before="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline font-size="11pt">
												&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;El asegurado faculta expresamente a la compañía, para que le envíe copia de la póliza y de los demás
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table table-layout="fixed" text-align="justify" >
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-left-color="black" border-left-style="solid" 
													border-right-color="black" border-right-style="solid">
										<fo:block line-height="11pt" space-after="0.1cm" margin-right="0.1cm" margin-left="0.1cm"> 
											<fo:inline font-size="11pt">
												documentos que forman parte integrante de la misma, a la dirección de correo electrónico individualizada por
												el asegurado en este instrumento, con lo cual el suscrito se entenderá por recibido, comunicado y/o notificado
												de la información pertinente como si fuera en soporte papel. En todo caso el asegurado podrá siempre
												solicitar una copia del mismo en el domicilio de la Compañía, debiendo la última hacer entrega de ella en el
												plazo máximo de cinco días.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="11cm"/>
						<fo:table-column column-width="8.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-top="1pt" padding-left="1pt">
											<fo:inline>
												&#0160;Vigencia Operación: Desde
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Hasta:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt" text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt" >
												La prima y/o tasa puede variar en función a la evaluación del riesgo por parte de Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm" margin-top="0.1cm"  margin-right="0.1cm" space-before="0.1cm">
											<fo:inline start-indent="2pt">
												El seguro ofrecido es intermediado por Bci Corredores de Seguros S.A., RUT 78.951.950-1 y la compañía que
												cubre el riesgo es Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm" space-before="0.2cm">
											<fo:inline start-indent="1pt"  font-weight="bold">
											IMPORTANTE: 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" space-after="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se
												procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que esta propuesta sea
												aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular Nº 2.126 S.V.S.).
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" space-after="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												Todas las menciones de esta propuesta formarán parte integrante de las Condiciones Particulares de la póliza.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Por el presente instrumento, solicito la contratación de los productos individualizados a continuación:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid" background-color="#E0E0E0">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm" font-weight="bold">
											<fo:inline>
												SEGUROS CONTRATADOS: CONDICIONES, EXCLUSIONES Y DETALLE DE COBERTURAS AL REVERSO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="7.8cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="3.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;Producto
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;N° Operación
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160; Moneda
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;Capital asegurado
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;Prima Bruta UF
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="7.3cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="3.4cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" margin-left="0.2cm">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Desgravamen LSG (POL 2 2013 0331)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" margin-left="0.2cm">
											<fo:inline>
												X
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Desgravamen LCE (POL 2 2013 0331)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="5pt">
											<fo:inline font-size="11pt" >
											&#0160; Pesos
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline font-size="11pt" >
												&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												MANDATO: 
											</fo:inline>
											<fo:inline start-indent="1pt">
												Por el presente instrumento, solicito como asegurable la contratación del (os) seguro(s)
												respectivo(s) de Bci Seguros de Vida S.A. según producto(s) identificado(s) precedentemente. Con este
												objeto otorgo mandato al Banco de Crédito e Inversiones, en adelante "el Mandatario", para que contrate y/o
												renueve con BCI Seguros Vida S.A., uno o más Seguros para el asegurable, intermediados por Bci Corredores
												de Seguros S.A. Desde ya, acepto como asegurable todas las condiciones de la contratación del o de los
												seguro(s), entre éstas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de
												cualesquiera otros gastos generados con ocasión del o de los mismos, en cualquiera de mis Cuentas
												Corrientes, o la rebaja correspondiente del o de los créditos que se me concediere(n), de la(s) prima(s),
												impuestos, comisiones y otros gastos derivados de su contratación y renovación en su caso, en las
												oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. Así también, acepto las
												condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compañía de
												Seguros y el monto de cobertura sin que al Banco corresponda responsabilidad alguna, para el evento que
												el(los) seguro(s) no fuese(n) pagado(s), no fuere(n) contratado(s), no fuese(n) renovado(s), o no cumplan los
												requisitos de asegurabilidad exigidos.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												EL ASEGURABLE DECLARA ESTAR EN CONOCIMIENTO:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="18.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												a)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Que esta solicitud de incorporación, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												b)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												La presente Solicitud de Incorporación a estos seguros se hace a petición del suscrito y en ningún caso ha
												sido considerada como condición para el otorgamiento del (de los) crédito(s) ofrecido(s) o solicitado(s); y
												además declaro estar en pleno conocimiento de toda la información contenida en la presente Solicitud.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												c)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y de la
												compañía aseguradora.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												d)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-after="0.1cm">
												<fo:inline start-indent="2pt">
													Estar dispuesto a someterme a pruebas médicas por cuenta de la Compañía, asimismo autorizo a los
													médicos, hospital, clínica u otra institución o persona que tenga mis registros personales para que
													entregue o proporcione la información solicitada por BCI Seguros Vida S.A. A su vez faculto a esta última
													para que solicite o retire copia de tales antecedentes patológicos, incluso en caso de muerte, conforme a lo
													dispuesto en la ley número 19.628, artículo 127 del Código Sanitario.
												</fo:inline>
											</fo:block>
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												AUTORIZACIÓN:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Autorizo al Banco para remitir a Bci Seguros Vida S.A. y/o Bci Corredores de Seguros S.A.
												la información pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas,
												montos o saldos insolutos adeudados y demás que fuere menester para dichas operaciones, según lo
												solicitaren dichas compañías.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												ANEXO DETALLE DE COMISIONES:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Seguro desgravamen Línea de Sobregiro en Cuenta Corriente (POL 2
												2013 0331), comisión de intermediación 25%. Seguro desgravamen Línea de Crédito de Emergencia (POL 2
												2013 0331), comisión de intermediación 30%. Comisión de recaudación (receptor banco BCI): UF 0,03 + IVA
												por recaudación. Valija documentos (receptor banco BCI): $ 400 + IVA por seguro.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
	<!--salto de pagina-->			
<!-- FIN tabla asegurable -->
<!-- PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN -->
	<fo:block text-align="left" break-after="page"></fo:block>
	
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="4">
										<fo:block space-after="0.01cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->				
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												SEGURO DESGRAVAMEN
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												Compañía Aseguradora:
											</fo:inline>
											<fo:inline start-indent="2pt">
												BCI Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												Cobertura:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Desgravamen (POL 2 2013 0331)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Monto Asegurado:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Monto utilizado de la Línea de Sobregiro en Cuenta Corriente o de la Línea de Crédito 
												de Emergencia o ambas con un tope máximo, correspondiente al cupo autorizado por el Banco de Crédito
												e Inversiones; al día inmediatamente anterior a la fecha de fallecimiento del deudor, más los intereses
												devengados al cierre del mes anterior a la fecha de fallecimiento, sobre la base de un servicio regular de la
												deuda, con un tope máximo, correspondiente al cupo autorizado por el Banco de Crédito e Inversiones.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Beneficiario:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Banco de Crédito e Inversiones
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Edad límite de ingreso y permanencia:
											</fo:inline>
											<fo:inline start-indent="2pt">
												La edad del asegurado al momento de su ingreso, sumado al
												plazo de la deuda, no deben exceder los 75 años 0 días.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												Exclusiones:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Las exclusiones del seguro se encuentran contenidas en la póliza depositada en el registro
												de la S.V.S. bajo el código POL 2 2013 0331, las cuales consisten en las siguientes: a) Automutilación, o
												autolesión, b) Pena de muerte o por participación del Asegurado en cualquier acto delictivo, c) Por quien
												pudiere verse beneficiado por el pago de la cantidad asegurada, mediante su participación como autor o
												cómplice en un acto que sea calificado por la ley como delito, d) La participación activa del Asegurado en
												guerra internacional, sea que Chile tenga o no intervención en ella; en guerra civil, dentro o fuera de Chile;
												o en motín o conmoción contra el orden público dentro o fuera del país; o hechos que las leyes califican
												como delitos contra la seguridad interior del Estado, e) La participación activa del Asegurado en acto
												terrorista, f) La participación del Asegurado en actos temerarios o en cualquier maniobra, experimento,
												exhibición, desafío o actividad notoriamente peligrosa, entendiendo por tales aquellas en las cuales se pone
												en grave peligro la vida e integridad física de las personas, g) La realización o participación en una actividad
												o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante
												agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos. A vía de
												ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera
												actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de
												alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, bungee, parapente,
												carreras de auto y moto, entre otros, h) Situaciones o Enfermedades preexistentes, entendiéndose por tales
												las definidas en el artículo 2° de estas Condiciones Generales. Para los efectos de la aplicación de esta
												exclusión, al momento de la contratación la Compañía Aseguradora deberá consultar al Asegurable acerca
												de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitación o
												exclusión de cobertura, i) Fisión o fusión nuclear o contaminación radioactiva, j) Una infección oportunística,
												o un neoplasma maligno, si al momento de la muerte o enfermedad el asegurado sufría del Síndrome de
												Inmunodeficiencia Adquirida.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												CONSULTAS, RECLAMOS Y DENUNCIAS DE SINIESTRO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deberá comunicar con Bci
												Corredores de Seguros al teléfono (02) 25404953 o al e-mail: siniestrosbci@bci.cl., al teléfono del CRI de
												la Compañía de Seguros 6006000292 - desde celular 02 - 26799700 o en cualquiera de las oficinas de
												Bci Seguros.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												DECLARACIÓN DE RECEPCIÓN DE DOCUMENTOS Y ENTREGA DE INFORMACIÓN
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												El Suscriptor abajo firmante declara recibir en este acto por parte del Banco de Crédito e Inversiones el
												documento "Informativo sobre Seguro de Desgravamen para Deudores Línea de Sobregiro en Cuenta
												Corriente y Línea de Crédito de Emergencia".
												Asimismo, declara haber recibido del Banco de Crédito e Inversiones toda la información, en forma
												oportuna y completa, acerca de las primas, coberturas y demás condiciones generales sobre el seguro de
												Desgravamen, como asimismo respecto de otros gastos asociados al seguro (comisiones), todos los cuales
												serán de cargo del suscrito.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												COBERTURA PROVISORIA
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												BCI SEGUROS VIDA S.A bajo la condición de veracidad de la declaración de salud y demás declaraciones formuladas
												en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de
												acuerdo a las condiciones generales de la póliza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta
												cobertura provisoria será el menor valor entre UF 1.000 y el monto indicado en la propuesta para dicho riesgo.
												La cobertura otorgada por el presente certificado tendrá vigencia a contar de la fecha en que se reciba en oficinas de la
												compañía la prima del seguro propuesto y hasta la fecha de aceptación o rechazo definitivo del riesgo por parte de la
												compañía, lo que no podrá exceder de 30 días corridos. Para estos, no se entenderá percibida la prima por el solo
												hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compañía comunicará por escrito al
												asegurado, devolviendo la prima en depósito recibida.
												Es condición esencial que toda información entregada por el cliente sea fidedigna, entendiéndose que toda declaración
												falsa errónea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaración personal de
												Salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.
												Este certificado no tendrá validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra
												propuesta de seguro de esta compañía.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#E0E0E0">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												INFORMACION ARTICULOS 57 Y 58 DEL DL Nº 251
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid" 
												border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												La información sobre la diversificación de esta corredora, de las entidades aseguradoras con que haya
												trabajado y de las pólizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a
												su disposición en http://www.bci.cl/personas/seguros/diversificacion_de_cartera.html.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>								
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt" text-align="center" padding-top="60pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												<xsl:value-of select="lineaEmergencia/fechaActual"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:external-graphic  height="264px" width="402px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/firmaCorredora3.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Titular
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Corredor
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!--FIN PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN -->
	<!--salto de pagina--><fo:block text-align="left" break-after="page"></fo:block>
<!--DECLARACIÓN PERSONAL DE SALUD -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.9cm"/>
						<fo:table-column column-width="3.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline font-weight="bold">
												CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="8pt" text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" space-after="0.1cm">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->				
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="center" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold">
											<fo:inline start-indent="1pt" font-weight="bold">
												DECLARACIÓN PERSONAL DE SALUD
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="8.7cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Nombre Completo
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="10pt">
												&#0160;RUT
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="4.6cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="1.4cm"/>
						<fo:table-column column-width="1.6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Fecha Nacimiento 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.8cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="0.5cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;Teléfono
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="10pt">
												&#0160;Capital Asegurado (UF)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;Plazo
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="6.8cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="5.9cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Peso (Kgs.)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="10pt">
												&#0160;Estatura (Cms.)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												1.
											</fo:inline>
											<fo:inline start-indent="1pt" >
												¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes situaciones de salud o
												enfermedades: diabetes, enfermedades al riñón, enfermedades a los huesos o músculos como hernias a la columna,
												artrosis, discopatías, lumbago, lumbociática, o cualquier otra enfermedad de los componentes del sistema osteomuscular,
												enfermedades cardiacas, bypass, hipertensión arterial, infarto del miocardio, enfermedades
												coronarias, angina de pecho, enfermedades reumáticas, soplo al corazón, arritmias, accidentes cerebrovasculares,
												aneurismas, varices, flebitis, úlceras varicosas o cualquier otra enfermedad al corazón, arterias, venas o sistema
												circulatorio, enfermedades al sistema respiratorio, cáncer, hepatitis (excepto tipo A), enfermedades gastrointestinales,
												como cirrosis hepática, úlcera gástrica, colitis ulcerosa, enfermedades hematológicas como leucemia, linfoma o anemia,
												desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurológicas, como epilepsia, enfermedad de
												Alzheimer, alcoholismo o drogadicción, sobrepeso u obesidad con o sin cirugía?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="7.1cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="2.6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Enfermedad
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Fecha del Diagnóstico
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="14.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Médico Tratante
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												2.
											</fo:inline>
											<fo:inline start-indent="2pt">
												¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta
												anterior?.
											</fo:inline>
											<fo:inline>
												<fo:table text-align="center" table-layout="fixed">
													<fo:table-column column-width="0.8cm"/>
													<fo:table-column column-width="0.5cm"/>
													<fo:table-column column-width="2cm"/>
													<fo:table-column column-width="1cm"/>
													<fo:table-column column-width="0.5cm"/>
													<fo:table-column column-width="14.4cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;SI
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt">
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160; NO
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt" >
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right-color="black" border-right-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													Detalle de Enfermedad: ______________________________________________________________
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													Médico Tratante y especialidad :________________________________________________________
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													¿A la fecha de la presente declaración se ha practicado exámenes médicos recientes cuyos resultados 
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="1.5cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="7.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;estén pendientes o usted no conozca?.
											</fo:inline>
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160; SI:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid"
													border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline>
												&#0160;Si su respuesta es afirmativa especifique:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid"
													border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Examen (es):________________________________________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Fecha de realización: _____________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt" text-align="left" margin-left="0.1cm" margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												3.
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;¿Ha estado bajo algún tratamiento médico en los últimos 5 años?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
				<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Diagnostico
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Tipo de tratamiento
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="6.6cm"/>
						<fo:table-column column-width="4.2cm"/>
						<fo:table-column column-width="3.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Médico Tratante
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												4. 
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;¿Ingiere o le ha sido prescrito la ingesta de algún tipo de medicamento en forma habitual?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" 
													border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Nombre del o los medicamentos:___________________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												5. 
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;Usted ha sido dictaminado o se le ha otorgado algún grado de Invalidez por alguna Comisión Médica
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;(AFP/Compin/Mutuales/Capredena ) a causa de una enfermedad o accidente?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.8cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="2cm"/>
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="14.4cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;SI
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt">
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160; NO
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt" >
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right-color="black" border-right-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;En caso de respuesta afirmativa, detalle:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Causa (as) de Invalidez y fecha de dictamen :______________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Porcentaje de Invalidez otorgado:________________________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												6. 
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;¿Se encuentra tramitando una Invalidez por accidente o por enfermedad, en alguna de las Comisiones antes
													mencionada?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.8cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="2cm"/>
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="14.4cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;SI
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt">
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160; NO
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt" >
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right-color="black" border-right-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;En caso afirmativo indicar causal y comisión en la que presentó los antecedentes:__________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm" letter-spacing="0.01pt">
											<fo:inline start-indent="1pt">
												Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que
												nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la
												Compañía aseguradora información determinante del riesgo que se le propone asegurar y en consecuencia,
												si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendrá derecho para
												rescindir el contrato, de acuerdo a lo dispuesto en el artículo 525 del Código de Comercio.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="3pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm" letter-spacing="0.01mm">
											<fo:inline start-indent="1pt" >
												Declaro estar dispuesto a someterme voluntariamente a exámenes y pruebas médicas, si la Compañía así lo
												requiere, con ocasión de la evaluación y/o suscripción del riesgo por su parte, y asimismo, para el caso de
												siniestro. Adicionalmente, autorizo expresamente a cualquier médico, profesional de la salud, institución de
												salud pública o privada, tribunales de justicia, jueces árbitros y a cualquier otra persona natural o jurídica,
												pública o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente
												con datos, información o antecedentes relativos a mi estado de salud física y psíquica; tales como fichas
												clínicas, antecedentes clínicos, informes médicos y análisis o exámenes de laboratorio clínicos, para entregar
												dichos datos, información o antecedentes a la Compañía, cuando esta lo solicite, para lo cual otorgo mi
												expreso consentimiento conforme lo dispone la Ley Nº19.628 y el artículo 127 del Código Sanitario. Además
												autorizo a la Compañía a realizar el tratamiento de la información antes señalada, todo ello conforme lo
												dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo la etapa de evaluación y durante el procedimiento de liquidación de cualquier siniestro, autorizaciones que no se extinguirán en caso de muerte, conforme lo establece el artículo 2169 del Código Civil. Por otra parte la Compañía se obliga a guardar absoluta reserva y confidencialidad respecto de la información recibida.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="7cm"/>
						<fo:table-column column-width="2.2cm"/>
							<fo:table-body>
							<fo:table-row>
									<fo:table-cell  border-left-color="black" border-left-style="solid">
												<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
												<fo:block space-after="1.3cm"></fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; FECHA: ___/_____/___
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												Firma y RUT Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
	<fo:block text-align="left" break-after="page"></fo:block>
<!--FIN DECLARACIÓN PERSONAL DE SALUD -->		
		<!--salto de pagina-->			
<!--DECLARACIÓN DE DEPORTES Y ACTIVIDADES -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" space-after="0.2cm">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->				
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="center" font-weight="bold">
											<fo:inline font-weight="bold">
												DECLARACIÓN DE DEPORTES Y ACTIVIDADES
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="8.7cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt" text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Nombre Completo
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;RUT
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="4.6cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="1.4cm"/>
						<fo:table-column column-width="2.6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Fecha Nacimiento 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Teléfono
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Monto Asegurado (UF)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Plazo
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												7.
											</fo:inline>
											<fo:inline start-indent="1pt" >
												¿Practica Ud. alguna de las actividades o deportes indicados a continuación aunque lo haga en forma ocasional y/o
												esporádica: inmersiones subacuáticas, alas delta, parapente, paracaidismo, bungee, montañismo, boxeo, carreras de auto,
												moto, embarcaciones acuáticas, bicicleta, ski de nieve; esquí en helicóptero, manta ray, polo, kite surf, carreras de caballo,
												rodeo, bombero, piloto o pasajero de aviación civil, pasajero en aviación comercial en vuelos no regulares o de itinerario no
												establecido (Charter)?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;INDIQUE
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												8.
											</fo:inline>
											<fo:inline start-indent="2pt">
												¿Hace uso de motocicletas?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique cilindrada
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
								<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;INDIQUE
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="10.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;DECLARACIÓN DE &#0160;OCUPACIÓN
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;Profesión o Actividad
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="7cm"/>
						<fo:table-column column-width="12.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Cargo que ocupa
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Lugar donde desempeña su actividad
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												9.
											</fo:inline>
											<fo:inline start-indent="1pt">
												¿En razón de su profesión o actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o
												a gran altura, manejar sustancias: corrosivas, tóxicas, ácidos, pesticidas, petróleos; entrar en contacto con sustancias
												radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos
												con elementos de mediana o alta tensión, manejar maquinaria o implementos de corte en general, portar armas, realizar
												labores de guardia y/o vigilancia, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas
												importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o
												helicópteros privados o en vuelos no regulares o de itinerario no establecido?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
								<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;INDIQUE
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt">
												Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que nada he
												ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compañía aseguradora
												información determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable
												error, reticencia o inexactitud, el asegurador tendrá derecho para rescindir el contrato, de acuerdo a lo dispuesto en el
												artículo 525 del Código de Comercio.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt">
												Declaro estar dispuesto a someterme voluntariamente a exámenes y pruebas médicas, si la Compañía así lo requiere, con
												ocasión de la evaluación y/o suscripción del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente,
												autorizo expresamente a cualquier médico, profesional de la salud, institución de salud pública o privada, tribunales de
												justicia, jueces árbitros y a cualquier otra persona natural o jurídica, pública o privada, incluidas las Superintendencias de la
												Salud, de Isapres y de Valores y Seguros, que cuente con datos, información o antecedentes relativos a mi estado de salud
												física y psíquica; tales como fichas clínicas, antecedentes clínicos, informes médicos y análisis o exámenes de laboratorio
												clínicos, para entregar dichos datos, información o antecedentes a la Compañía, cuando esta lo solicite, para lo cual otorgo
												mi expreso consentimiento conforme lo dispone la Ley Nº19.628 y el artículo 127 del Código Sanitario. Además autorizo a
												la Compañía a realizar el tratamiento de la información antes señalada, todo ello conforme lo dispone la Ley 19.628. El
												consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo
												la etapa de evaluación y durante el procedimiento de liquidación de cualquier siniestro, autorizaciones que no se extinguirán
												en caso de muerte, conforme lo establece el artículo 2169 del Código Civil. Por otra parte la Compañía se obliga a guardar
												absoluta reserva y confidencialidad respecto de la información recibida.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt">
												Declaro recibir conforme en este acto una copia del presente instrumento.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="7cm"/>
						<fo:table-column column-width="2.2cm"/>
							<fo:table-body>
							<fo:table-row>
									<fo:table-cell  border-left-color="black" border-left-style="solid">
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; FECHA: ___/_____/___
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												Firma y RUT Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="4">
										<fo:block space-after="1.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt" text-align="center" padding-top="60pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												<xsl:value-of select="lineaEmergencia/fechaActual"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:external-graphic  height="264px" width="402px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/firmaCorredora3.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="center" padding-top="1pt" padding-left="1pt" font-weight="bold">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="center" padding-top="1pt" padding-left="1pt" font-weight="bold">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Titular
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="center" padding-top="1pt" padding-left="1pt" font-weight="bold">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Corredor
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				
			</fo:flow>
	</fo:page-sequence>
<!-- FIN PROPUESTA SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE) COPIA CLIENTE -->
<!-- INICIO PROPUESTA SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE) COPIA CORREDORA -->
	<fo:page-sequence master-reference="solicitud">
		<fo:static-content flow-name="copia">
			<fo:block font-size="11pt" text-align="right" font-weight="bold">
				<xsl:text>COPIA: BCI CORREDORES DE SEGUROS</xsl:text>
			</fo:block>
		</fo:static-content>
		<fo:flow flow-name="xsl-region-body" font-family="Arial Narrow, Helvetica" font-stretch="condensed">
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												PROPUESTA SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN CUENTA 
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->

<!-- tabla asegurable -->
	<fo:block space-after="0.2cm"></fo:block>	
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="14cm"/>
						<fo:table-column column-width="5.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#E0E0E0">
										<fo:block font-size="11pt" padding-top="0.1cm"  text-align="left" font-weight="bold">
												&#0160;ASEGURABLE (Solo personas naturales)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="15pt" padding-top="0.1cm" >
												&#0160;Folio N°
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="4.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-top="0.1cm" padding-left="0.1cm">
												&#0160;DEUDOR DIRECTO
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" padding-top="0.1cm">
										<fo:block font-size="11pt"  text-align="left">
												AVAL
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="11cm"/>
						<fo:table-column column-width="8.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
												&#0160;Nombre Completo:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;R.U.T.
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="1.5cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2.3cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
												&#0160;Sexo: 
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
												&#0160; Masculino
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
												&#0160; Femenino
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5.5cm"/>
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="9.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;Fecha Nacimiento:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;Estado Civil:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;E-mail:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="0.1cm" >
												&#0160;Domicilio:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="7.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Comuna:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Ciudad:
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Teléfono:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table  table-layout="fixed" text-align="justify" >
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="18.7cm"/>
							<fo:table-body>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="7pt" margin-left="0.1cm">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" >
										<fo:block line-height="11pt" space-before="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline font-size="11pt">
												&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;El asegurado faculta expresamente a la compañía, para que le envíe copia de la póliza y de los demás
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table table-layout="fixed" text-align="justify" >
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-left-color="black" border-left-style="solid" 
													border-right-color="black" border-right-style="solid">
										<fo:block line-height="11pt" space-after="0.1cm" margin-right="0.1cm" margin-left="0.1cm"> 
											<fo:inline font-size="11pt">
												documentos que forman parte integrante de la misma, a la dirección de correo electrónico individualizada por
												el asegurado en este instrumento, con lo cual el suscrito se entenderá por recibido, comunicado y/o notificado
												de la información pertinente como si fuera en soporte papel. En todo caso el asegurado podrá siempre
												solicitar una copia del mismo en el domicilio de la Compañía, debiendo la última hacer entrega de ella en el
												plazo máximo de cinco días.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="11cm"/>
						<fo:table-column column-width="8.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-top="1pt" padding-left="1pt">
											<fo:inline>
												&#0160;Vigencia Operación: Desde
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Hasta:
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt" text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt" >
												La prima y/o tasa puede variar en función a la evaluación del riesgo por parte de Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm" margin-top="0.1cm"  margin-right="0.1cm" space-before="0.1cm">
											<fo:inline start-indent="2pt">
												El seguro ofrecido es intermediado por Bci Corredores de Seguros S.A., RUT 78.951.950-1 y la compañía que
												cubre el riesgo es Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm" space-before="0.2cm">
											<fo:inline start-indent="1pt"  font-weight="bold">
											IMPORTANTE: 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" space-after="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se
												procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que esta propuesta sea
												aceptada por el asegurador y se inicie la vigencia de la póliza. (Circular Nº 2.126 S.V.S.).
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" space-after="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												Todas las menciones de esta propuesta formarán parte integrante de las Condiciones Particulares de la póliza.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Por el presente instrumento, solicito la contratación de los productos individualizados a continuación:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid" background-color="#E0E0E0">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm" font-weight="bold">
											<fo:inline>
												SEGUROS CONTRATADOS: CONDICIONES, EXCLUSIONES Y DETALLE DE COBERTURAS AL REVERSO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="7.8cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="3.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;Producto
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;N° Operación
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160; Moneda
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;Capital asegurado
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;Prima Bruta UF
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="7.3cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="3.4cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" margin-left="0.2cm">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Desgravamen LSG (POL 2 2013 0331)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="2pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" margin-left="0.2cm">
											<fo:inline>
												X
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Desgravamen LCE (POL 2 2013 0331)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="5pt">
											<fo:inline font-size="11pt" >
											&#0160; Pesos
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline font-size="11pt" >
												&#0160; <xsl:value-of select="lineaEmergencia/montoAsignado"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												MANDATO: 
											</fo:inline>
											<fo:inline start-indent="1pt">
												Por el presente instrumento, solicito como asegurable la contratación del (os) seguro(s)
												respectivo(s) de Bci Seguros de Vida S.A. según producto(s) identificado(s) precedentemente. Con este
												objeto otorgo mandato al Banco de Crédito e Inversiones, en adelante "el Mandatario", para que contrate y/o
												renueve con BCI Seguros Vida S.A., uno o más Seguros para el asegurable, intermediados por Bci Corredores
												de Seguros S.A. Desde ya, acepto como asegurable todas las condiciones de la contratación del o de los
												seguro(s), entre éstas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de
												cualesquiera otros gastos generados con ocasión del o de los mismos, en cualquiera de mis Cuentas
												Corrientes, o la rebaja correspondiente del o de los créditos que se me concediere(n), de la(s) prima(s),
												impuestos, comisiones y otros gastos derivados de su contratación y renovación en su caso, en las
												oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. Así también, acepto las
												condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compañía de
												Seguros y el monto de cobertura sin que al Banco corresponda responsabilidad alguna, para el evento que
												el(los) seguro(s) no fuese(n) pagado(s), no fuere(n) contratado(s), no fuese(n) renovado(s), o no cumplan los
												requisitos de asegurabilidad exigidos.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												EL ASEGURABLE DECLARA ESTAR EN CONOCIMIENTO:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="18.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												a)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Que esta solicitud de incorporación, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												b)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												La presente Solicitud de Incorporación a estos seguros se hace a petición del suscrito y en ningún caso ha
												sido considerada como condición para el otorgamiento del (de los) crédito(s) ofrecido(s) o solicitado(s); y
												además declaro estar en pleno conocimiento de toda la información contenida en la presente Solicitud.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												c)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y de la
												compañía aseguradora.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												d)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-after="0.1cm">
												<fo:inline start-indent="2pt">
													Estar dispuesto a someterme a pruebas médicas por cuenta de la Compañía, asimismo autorizo a los
													médicos, hospital, clínica u otra institución o persona que tenga mis registros personales para que
													entregue o proporcione la información solicitada por BCI Seguros Vida S.A. A su vez faculto a esta última
													para que solicite o retire copia de tales antecedentes patológicos, incluso en caso de muerte, conforme a lo
													dispuesto en la ley número 19.628, artículo 127 del Código Sanitario.
												</fo:inline>
											</fo:block>
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												AUTORIZACIÓN:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Autorizo al Banco para remitir a Bci Seguros Vida S.A. y/o Bci Corredores de Seguros S.A.
												la información pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas,
												montos o saldos insolutos adeudados y demás que fuere menester para dichas operaciones, según lo
												solicitaren dichas compañías.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												ANEXO DETALLE DE COMISIONES:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Seguro desgravamen Línea de Sobregiro en Cuenta Corriente (POL 2
												2013 0331), comisión de intermediación 25%. Seguro desgravamen Línea de Crédito de Emergencia (POL 2
												2013 0331), comisión de intermediación 30%. Comisión de recaudación (receptor banco BCI): UF 0,03 + IVA
												por recaudación. Valija documentos (receptor banco BCI): $ 400 + IVA por seguro.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
	<!--salto de pagina-->			
<!-- FIN tabla asegurable -->
<!-- PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN -->
	<fo:block text-align="left" break-after="page"></fo:block>
	
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="4">
										<fo:block space-after="0.01cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->				
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												SEGURO DESGRAVAMEN
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												Compañía Aseguradora:
											</fo:inline>
											<fo:inline start-indent="2pt">
												BCI Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												Cobertura:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Desgravamen (POL 2 2013 0331)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Monto Asegurado:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Monto utilizado de la Línea de Sobregiro en Cuenta Corriente o de la Línea de Crédito 
												de Emergencia o ambas con un tope máximo, correspondiente al cupo autorizado por el Banco de Crédito
												e Inversiones; al día inmediatamente anterior a la fecha de fallecimiento del deudor, más los intereses
												devengados al cierre del mes anterior a la fecha de fallecimiento, sobre la base de un servicio regular de la
												deuda, con un tope máximo, correspondiente al cupo autorizado por el Banco de Crédito e Inversiones.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Beneficiario:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Banco de Crédito e Inversiones
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Edad límite de ingreso y permanencia:
											</fo:inline>
											<fo:inline start-indent="2pt">
												La edad del asegurado al momento de su ingreso, sumado al
												plazo de la deuda, no deben exceder los 75 años 0 días.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												Exclusiones:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Las exclusiones del seguro se encuentran contenidas en la póliza depositada en el registro
												de la S.V.S. bajo el código POL 2 2013 0331, las cuales consisten en las siguientes: a) Automutilación, o
												autolesión, b) Pena de muerte o por participación del Asegurado en cualquier acto delictivo, c) Por quien
												pudiere verse beneficiado por el pago de la cantidad asegurada, mediante su participación como autor o
												cómplice en un acto que sea calificado por la ley como delito, d) La participación activa del Asegurado en
												guerra internacional, sea que Chile tenga o no intervención en ella; en guerra civil, dentro o fuera de Chile;
												o en motín o conmoción contra el orden público dentro o fuera del país; o hechos que las leyes califican
												como delitos contra la seguridad interior del Estado, e) La participación activa del Asegurado en acto
												terrorista, f) La participación del Asegurado en actos temerarios o en cualquier maniobra, experimento,
												exhibición, desafío o actividad notoriamente peligrosa, entendiendo por tales aquellas en las cuales se pone
												en grave peligro la vida e integridad física de las personas, g) La realización o participación en una actividad
												o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante
												agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos. A vía de
												ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera
												actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de
												alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, bungee, parapente,
												carreras de auto y moto, entre otros, h) Situaciones o Enfermedades preexistentes, entendiéndose por tales
												las definidas en el artículo 2° de estas Condiciones Generales. Para los efectos de la aplicación de esta
												exclusión, al momento de la contratación la Compañía Aseguradora deberá consultar al Asegurable acerca
												de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitación o
												exclusión de cobertura, i) Fisión o fusión nuclear o contaminación radioactiva, j) Una infección oportunística,
												o un neoplasma maligno, si al momento de la muerte o enfermedad el asegurado sufría del Síndrome de
												Inmunodeficiencia Adquirida.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												CONSULTAS, RECLAMOS Y DENUNCIAS DE SINIESTRO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deberá comunicar con Bci
												Corredores de Seguros al teléfono (02) 25404953 o al e-mail: siniestrosbci@bci.cl., al teléfono del CRI de
												la Compañía de Seguros 6006000292 - desde celular 02 - 26799700 o en cualquiera de las oficinas de
												Bci Seguros.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												DECLARACIÓN DE RECEPCIÓN DE DOCUMENTOS Y ENTREGA DE INFORMACIÓN
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												El Suscriptor abajo firmante declara recibir en este acto por parte del Banco de Crédito e Inversiones el
												documento "Informativo sobre Seguro de Desgravamen para Deudores Línea de Sobregiro en Cuenta
												Corriente y Línea de Crédito de Emergencia".
												Asimismo, declara haber recibido del Banco de Crédito e Inversiones toda la información, en forma
												oportuna y completa, acerca de las primas, coberturas y demás condiciones generales sobre el seguro de
												Desgravamen, como asimismo respecto de otros gastos asociados al seguro (comisiones), todos los cuales
												serán de cargo del suscrito.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												COBERTURA PROVISORIA
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												BCI SEGUROS VIDA S.A bajo la condición de veracidad de la declaración de salud y demás declaraciones formuladas
												en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de
												acuerdo a las condiciones generales de la póliza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta
												cobertura provisoria será el menor valor entre UF 1.000 y el monto indicado en la propuesta para dicho riesgo.
												La cobertura otorgada por el presente certificado tendrá vigencia a contar de la fecha en que se reciba en oficinas de la
												compañía la prima del seguro propuesto y hasta la fecha de aceptación o rechazo definitivo del riesgo por parte de la
												compañía, lo que no podrá exceder de 30 días corridos. Para estos, no se entenderá percibida la prima por el solo
												hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compañía comunicará por escrito al
												asegurado, devolviendo la prima en depósito recibida.
												Es condición esencial que toda información entregada por el cliente sea fidedigna, entendiéndose que toda declaración
												falsa errónea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaración personal de
												Salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.
												Este certificado no tendrá validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra
												propuesta de seguro de esta compañía.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#E0E0E0">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												INFORMACION ARTICULOS 57 Y 58 DEL DL Nº 251
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid" 
												border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												La información sobre la diversificación de esta corredora, de las entidades aseguradoras con que haya
												trabajado y de las pólizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a
												su disposición en http://www.bci.cl/personas/seguros/diversificacion_de_cartera.html.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>								
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt" text-align="center" padding-top="60pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												<xsl:value-of select="lineaEmergencia/fechaActual"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:external-graphic  height="264px" width="402px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/firmaCorredora3.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Titular
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Corredor
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!--FIN PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN -->
	<!--salto de pagina--><fo:block text-align="left" break-after="page"></fo:block>
<!--DECLARACIÓN PERSONAL DE SALUD -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.9cm"/>
						<fo:table-column column-width="3.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline font-weight="bold">
												CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="8pt" text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" space-after="0.1cm">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->				
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="center" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold">
											<fo:inline start-indent="1pt" font-weight="bold">
												DECLARACIÓN PERSONAL DE SALUD
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="8.7cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Nombre Completo
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="10pt">
												&#0160;RUT
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="4.6cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="1.4cm"/>
						<fo:table-column column-width="1.6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Fecha Nacimiento 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.8cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="0.5cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;Teléfono
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="10pt">
												&#0160;Capital Asegurado (UF)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;Plazo
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="6.8cm"/>
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="5.9cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Peso (Kgs.)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="10pt">
												&#0160;Estatura (Cms.)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												1.
											</fo:inline>
											<fo:inline start-indent="1pt" >
												¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes situaciones de salud o
												enfermedades: diabetes, enfermedades al riñón, enfermedades a los huesos o músculos como hernias a la columna,
												artrosis, discopatías, lumbago, lumbociática, o cualquier otra enfermedad de los componentes del sistema osteomuscular,
												enfermedades cardiacas, bypass, hipertensión arterial, infarto del miocardio, enfermedades
												coronarias, angina de pecho, enfermedades reumáticas, soplo al corazón, arritmias, accidentes cerebrovasculares,
												aneurismas, varices, flebitis, úlceras varicosas o cualquier otra enfermedad al corazón, arterias, venas o sistema
												circulatorio, enfermedades al sistema respiratorio, cáncer, hepatitis (excepto tipo A), enfermedades gastrointestinales,
												como cirrosis hepática, úlcera gástrica, colitis ulcerosa, enfermedades hematológicas como leucemia, linfoma o anemia,
												desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurológicas, como epilepsia, enfermedad de
												Alzheimer, alcoholismo o drogadicción, sobrepeso u obesidad con o sin cirugía?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="7.1cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="2.6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Enfermedad
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Fecha del Diagnóstico
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="14.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Médico Tratante
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												2.
											</fo:inline>
											<fo:inline start-indent="2pt">
												¿Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta
												anterior?.
											</fo:inline>
											<fo:inline>
												<fo:table text-align="center" table-layout="fixed">
													<fo:table-column column-width="0.8cm"/>
													<fo:table-column column-width="0.5cm"/>
													<fo:table-column column-width="2cm"/>
													<fo:table-column column-width="1cm"/>
													<fo:table-column column-width="0.5cm"/>
													<fo:table-column column-width="14.4cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;SI
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt">
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160; NO
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt" >
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right-color="black" border-right-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													Detalle de Enfermedad: ______________________________________________________________
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													Médico Tratante y especialidad :________________________________________________________
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													¿A la fecha de la presente declaración se ha practicado exámenes médicos recientes cuyos resultados 
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="1.5cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="7.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;estén pendientes o usted no conozca?.
											</fo:inline>
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160; SI:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid"
													border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline>
												&#0160;Si su respuesta es afirmativa especifique:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid"
													border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Examen (es):________________________________________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Fecha de realización: _____________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt" text-align="left" margin-left="0.1cm" margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												3.
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;¿Ha estado bajo algún tratamiento médico en los últimos 5 años?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
				<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Diagnostico
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Tipo de tratamiento
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="6.6cm"/>
						<fo:table-column column-width="4.2cm"/>
						<fo:table-column column-width="3.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Médico Tratante
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												4. 
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;¿Ingiere o le ha sido prescrito la ingesta de algún tipo de medicamento en forma habitual?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" font-size="7pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" 
													border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Nombre del o los medicamentos:___________________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												5. 
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;Usted ha sido dictaminado o se le ha otorgado algún grado de Invalidez por alguna Comisión Médica
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;(AFP/Compin/Mutuales/Capredena ) a causa de una enfermedad o accidente?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.8cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="2cm"/>
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="14.4cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;SI
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt">
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160; NO
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt" >
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right-color="black" border-right-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;En caso de respuesta afirmativa, detalle:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Causa (as) de Invalidez y fecha de dictamen :______________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;Porcentaje de Invalidez otorgado:________________________________________________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												6. 
											</fo:inline>
											<fo:inline start-indent="1pt">
												&#0160;¿Se encuentra tramitando una Invalidez por accidente o por enfermedad, en alguna de las Comisiones antes
													mencionada?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.8cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="2cm"/>
												<fo:table-column column-width="1cm"/>
												<fo:table-column column-width="0.5cm"/>
												<fo:table-column column-width="14.4cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;SI
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt">
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" >
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="left"  padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160; NO
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block border-color="black" border-style="solid" font-size="7pt" >
																	<fo:inline>
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell border-right-color="black" border-right-style="solid">
																<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
																	<fo:inline start-indent="1pt" font-weight="bold">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
											</fo:table>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;En caso afirmativo indicar causal y comisión en la que presentó los antecedentes:__________________
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm" letter-spacing="0.01pt">
											<fo:inline start-indent="1pt">
												Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que
												nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la
												Compañía aseguradora información determinante del riesgo que se le propone asegurar y en consecuencia,
												si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendrá derecho para
												rescindir el contrato, de acuerdo a lo dispuesto en el artículo 525 del Código de Comercio.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="3pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm" letter-spacing="0.01mm">
											<fo:inline start-indent="1pt" >
												Declaro estar dispuesto a someterme voluntariamente a exámenes y pruebas médicas, si la Compañía así lo
												requiere, con ocasión de la evaluación y/o suscripción del riesgo por su parte, y asimismo, para el caso de
												siniestro. Adicionalmente, autorizo expresamente a cualquier médico, profesional de la salud, institución de
												salud pública o privada, tribunales de justicia, jueces árbitros y a cualquier otra persona natural o jurídica,
												pública o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente
												con datos, información o antecedentes relativos a mi estado de salud física y psíquica; tales como fichas
												clínicas, antecedentes clínicos, informes médicos y análisis o exámenes de laboratorio clínicos, para entregar
												dichos datos, información o antecedentes a la Compañía, cuando esta lo solicite, para lo cual otorgo mi
												expreso consentimiento conforme lo dispone la Ley Nº19.628 y el artículo 127 del Código Sanitario. Además
												autorizo a la Compañía a realizar el tratamiento de la información antes señalada, todo ello conforme lo
												dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo la etapa de evaluación y durante el procedimiento de liquidación de cualquier siniestro, autorizaciones que no se extinguirán en caso de muerte, conforme lo establece el artículo 2169 del Código Civil. Por otra parte la Compañía se obliga a guardar absoluta reserva y confidencialidad respecto de la información recibida.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="7cm"/>
						<fo:table-column column-width="2.2cm"/>
							<fo:table-body>
							<fo:table-row>
									<fo:table-cell  border-left-color="black" border-left-style="solid">
												<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block></fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
												<fo:block space-after="1.3cm"></fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; FECHA: ___/_____/___
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												Firma y RUT Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
	<fo:block text-align="left" break-after="page"></fo:block>
<!--FIN DECLARACIÓN PERSONAL DE SALUD -->		
		<!--salto de pagina-->			
<!--DECLARACIÓN DE DEPORTES Y ACTIVIDADES -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="right">
											<fo:external-graphic  height="827px" width="2244px">
													<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/logoSegurosBCI.jpg')</xsl:attribute>
											</fo:external-graphic>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" space-after="0.2cm">
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- fin titulo-->				
				<fo:table text-align="center" table-layout="justify">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="center" font-weight="bold">
											<fo:inline font-weight="bold">
												DECLARACIÓN DE DEPORTES Y ACTIVIDADES
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<fo:table-column column-width="8.7cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt" text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Nombre Completo
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;RUT
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="2.5cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="4.6cm"/>
						<fo:table-column column-width="1.8cm"/>
						<fo:table-column column-width="1.4cm"/>
						<fo:table-column column-width="2.6cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Fecha Nacimiento 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:table text-align="center" table-layout="fixed">
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
												<fo:table-column column-width="0.6cm"/>
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block font-size="11pt"  text-align="right" padding-left="1pt">
																	<fo:inline start-indent="2pt">
																		&#0160;/
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
										</fo:table>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Teléfono
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Monto Asegurado (UF)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;Plazo
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												7.
											</fo:inline>
											<fo:inline start-indent="1pt" >
												¿Practica Ud. alguna de las actividades o deportes indicados a continuación aunque lo haga en forma ocasional y/o
												esporádica: inmersiones subacuáticas, alas delta, parapente, paracaidismo, bungee, montañismo, boxeo, carreras de auto,
												moto, embarcaciones acuáticas, bicicleta, ski de nieve; esquí en helicóptero, manta ray, polo, kite surf, carreras de caballo,
												rodeo, bombero, piloto o pasajero de aviación civil, pasajero en aviación comercial en vuelos no regulares o de itinerario no
												establecido (Charter)?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;INDIQUE
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												8.
											</fo:inline>
											<fo:inline start-indent="2pt">
												¿Hace uso de motocicletas?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
												border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique cilindrada
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
								<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;INDIQUE
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4.5cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="10.7cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;DECLARACIÓN DE &#0160;OCUPACIÓN
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;Profesión o Actividad
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="7cm"/>
						<fo:table-column column-width="12.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Cargo que ocupa
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												&#0160;Lugar donde desempeña su actividad
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt" font-weight="bold">
												9.
											</fo:inline>
											<fo:inline start-indent="1pt">
												¿En razón de su profesión o actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o
												a gran altura, manejar sustancias: corrosivas, tóxicas, ácidos, pesticidas, petróleos; entrar en contacto con sustancias
												radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos
												con elementos de mediana o alta tensión, manejar maquinaria o implementos de corte en general, portar armas, realizar
												labores de guardia y/o vigilancia, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas
												importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o
												helicópteros privados o en vuelos no regulares o de itinerario no establecido?.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="0.5cm"/>
						<fo:table-column column-width="14.4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottm-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;SI
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt">
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" >
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160; NO
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block border-color="black" border-style="solid" space-after="0.1cm" space-before="0.1cm" font-size="8pt" >
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;Si su respuesta es afirmativa especifique
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
								<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="14.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;INDIQUE
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block>
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="19.2cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid"
												border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt">
												Confirmo la veracidad y exactitud de las declaraciones que he formulado precedentemente, manifestando que nada he
												ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compañía aseguradora
												información determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable
												error, reticencia o inexactitud, el asegurador tendrá derecho para rescindir el contrato, de acuerdo a lo dispuesto en el
												artículo 525 del Código de Comercio.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt">
												Declaro estar dispuesto a someterme voluntariamente a exámenes y pruebas médicas, si la Compañía así lo requiere, con
												ocasión de la evaluación y/o suscripción del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente,
												autorizo expresamente a cualquier médico, profesional de la salud, institución de salud pública o privada, tribunales de
												justicia, jueces árbitros y a cualquier otra persona natural o jurídica, pública o privada, incluidas las Superintendencias de la
												Salud, de Isapres y de Valores y Seguros, que cuente con datos, información o antecedentes relativos a mi estado de salud
												física y psíquica; tales como fichas clínicas, antecedentes clínicos, informes médicos y análisis o exámenes de laboratorio
												clínicos, para entregar dichos datos, información o antecedentes a la Compañía, cuando esta lo solicite, para lo cual otorgo
												mi expreso consentimiento conforme lo dispone la Ley Nº19.628 y el artículo 127 del Código Sanitario. Además autorizo a
												la Compañía a realizar el tratamiento de la información antes señalada, todo ello conforme lo dispone la Ley 19.628. El
												consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo
												la etapa de evaluación y durante el procedimiento de liquidación de cualquier siniestro, autorizaciones que no se extinguirán
												en caso de muerte, conforme lo establece el artículo 2169 del Código Civil. Por otra parte la Compañía se obliga a guardar
												absoluta reserva y confidencialidad respecto de la información recibida.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="1pt" padding-left="5pt" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="1pt">
												Declaro recibir conforme en este acto una copia del presente instrumento.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="7cm"/>
						<fo:table-column column-width="2.2cm"/>
							<fo:table-body>
							<fo:table-row>
									<fo:table-cell  border-left-color="black" border-left-style="solid">
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell>
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid">
												<fo:block space-after="2cm"></fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="left" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; FECHA: ___/_____/___
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom-color="black" border-bottom-style="solid" border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt">
												Firma y RUT Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="center" padding-left="1pt">
											<fo:inline start-indent="1pt" font-weight="bold">
												 &#0160; 
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="0.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="4">
										<fo:block space-after="1.5cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt" text-align="center" padding-top="60pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												<xsl:value-of select="lineaEmergencia/fechaActual"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell  border-bottom-color="black" border-bottom-style="solid">
										<fo:external-graphic  height="264px" width="402px">
											<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="lineaEmergencia/logoResumen"/>lineaDeEmergencia/images/firmaCorredora3.gif')</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Fecha
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="center" padding-top="1pt" padding-left="1pt" font-weight="bold">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Asegurable
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="center" padding-top="1pt" padding-left="1pt" font-weight="bold">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Titular
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="center" padding-top="1pt" padding-left="1pt" font-weight="bold">
												&#0160;
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="1pt" padding-left="1pt">
											<fo:inline start-indent="2pt">
												Firma del Corredor
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
				
			</fo:flow>
	</fo:page-sequence>
<!-- FIN PROPUESTA SEGUROS DESGRAVAMEN LÍNEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y LÍNEA DE CRÉDITO DE EMERGENCIA (LCE) COPIA CORREDORA -->
<!-- INICIO INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO EN CUENTA CORRIENTE Y LINEA DE CRÉDITO DE EMERGENCIA DEL BANCO BCI-->
	<fo:page-sequence master-reference="default-page">
	   <fo:flow flow-name="xsl-region-body">
	<fo:table  table-layout="fixed" >
			<fo:table-column column-width="17.8cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block ont-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
								<fo:inline font-size="11pt" font-weight="bold">
								INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO 
								</fo:inline>
							</fo:block>
							<fo:block ont-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
								<fo:inline font-size="11pt" font-weight="bold">
								EN CUENTA CORRIENTE Y 
								</fo:inline>
							</fo:block>
							<fo:block ont-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
								<fo:inline font-size="11pt" font-weight="bold">
								LINEA DE CRÉDITO DE EMERGENCIA DEL BANCO BCI
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block line-height="11pt"  padding-top="5pt" padding-left="1pt" text-align="center">
								<fo:inline font-size="11pt" font-weight="bold">
								(Circulares 3331 Superintendencia de Bancos y 1759 Superintendencia de Valores y Seguros)
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="2">
							<fo:block space-after="0.5cm"></fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block line-height="11pt"  padding-top="2pt" padding-bottom="2pt" padding-left="3pt" text-align="left">
								<fo:inline font-size="11pt" font-weight="bold">
									Compañía Aseguradora: 
								</fo:inline>
								<fo:inline font-size="11pt">
									BCI Seguros Vida S.A.
								</fo:inline>
							</fo:block>
							<fo:block line-height="11pt"  padding-top="3pt" padding-bottom="2pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="11pt" font-weight="bold">
									Clasificación de riesgo: AA- 
								</fo:inline>
								<fo:inline font-size="11pt">
									 según Feller Y Rate y 
								</fo:inline>
								<fo:inline font-size="11pt" font-weight="bold">
									AA- 
								</fo:inline>
								<fo:inline font-size="11pt">
									Según Fitch Ratings
								</fo:inline>
							</fo:block>
							<fo:block line-height="11pt"  padding-top="3pt" padding-bottom="2pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="11pt" font-weight="bold">
									Intermediario:  
								</fo:inline>
								<fo:inline font-size="11pt">
									BCI Corredores de Seguros S.A.
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block line-height="11pt"  padding-top="14pt" padding-bottom="2pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="11pt">
									BCI Corredores de Seguros S.A., BCI Seguros Vida S.A., BCI Seguros Generales S.A. y Banco Crédito
									e Inversiones, forman parte del mismo grupo empresarial.
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block line-height="11pt"  padding-top="11pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="11pt" font-weight="bold">
									Coberturas
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block line-height="11pt"  padding-top="1pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="25pt" font-weight="bold" text-align="top">
									.
								</fo:inline>
								<fo:inline font-size="11pt">
									Muerte: Desgravamen (POL 2 2013 0331)
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block line-height="11pt"  padding-top="14pt" padding-bottom="11pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="25pt" font-weight="bold" text-align="top">
									.
								</fo:inline>
								<fo:inline font-size="11pt" font-weight="bold">
								Requisitos de Asegurabilidad
								</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
	</fo:table>
	<fo:table  table-layout="fixed" text-align="justify">
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="4cm"/>
				<fo:table-column column-width="4cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell > 
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt" font-weight="bold">
										 &#0160;
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell number-columns-spanned="2" border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt" font-weight="bold">
										Edad
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell  border-color="black" border-style="solid"> 
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="left"
								padding-top="2pt" padding-bottom="2pt">
									<fo:inline font-size="11pt" font-weight="bold">
										 Monto Asegurado vigente en la Cía.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										Hasta 54 años
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										55 a 75 años
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell  border-color="black" border-style="solid"> 
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="left">
									<fo:inline font-size="11pt">
										UF0,1 a UF6.000 
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										A
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										A
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell  border-color="black" border-style="solid"> 
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="left">
									<fo:inline font-size="11pt">
										 UF6.001 a UF8.000
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										A
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										B
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell  border-color="black" border-style="solid"> 
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="left">
									<fo:inline font-size="11pt">
										 UF8.001 a UF25.000
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										B
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										C
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell  border-color="black" border-style="solid"> 
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="left">
									<fo:inline font-size="11pt">
										 Mayor a UF25.000
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  number-columns-spanned="2" order-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										Siempre sujeto a evaluación a compañía
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
	</fo:table>
<fo:block space-after="0.5cm"></fo:block>

	<fo:table  table-layout="fixed" text-align="justify">
				<fo:table-column column-width="0.5cm"/>
				<fo:table-column column-width="16.5cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell  number-columns-spanned="2">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Donde:
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										A:
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										Solicitud de Incorporación+Declaración Personal de Salud.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>					
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										B:
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										Solicitud de Incorporación + Declaración Personal de Salud + Examen Médico + Orina completa +
										Perfil lipidito + perfil bioquímico.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										C:
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										Solicitud de Incorporación + Declaración Personal de Salud + Examen Médico + Orina completa +
										HIV + Perfil bioquímico + Perfil lipídico.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
<fo:block space-after="0.5cm"></fo:block>
	<fo:table  table-layout="fixed" text-align="justify">
					<fo:table-column column-width="17cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										La Compañía de Seguros se reserva el derecho de solicitar mayores antecedentes En aquellos casos
										que lo estime necesario y/o conveniente para la aceptación del asegurable.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										La edad del asegurado al momento de su ingreso, sumado al plazo de la deuda, no deben exceder los
										75 años.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always" padding-top="11pt">
									<fo:inline font-size="11pt" font-weight="bold">                
										Asegurados
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										Deudores del Banco Bci Línea de sobregiro en cuenta corriente y Línea de crédito de emergencia que
										sean personas naturales
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always" padding-top="18pt">
									<fo:inline font-size="11pt" font-weight="bold">                
										Monto Asegurado y Condiciones de Liquidación
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" keep-together="always" padding-top="2pt" padding-bottom="2pt">
									<fo:inline font-size="11pt" padding-top="2pt" padding-bottom="2pt">                
										Cupo utilizado de la línea de sobregiro en cuenta corriente o línea de crédito de emergencia o ambas
										con un tope máximo, correspondiente al cupo autorizado por la entidad contratante; al día
										inmediatamente anterior a la fecha de fallecimiento del deudor, más los intereses devengados al cierre
										del mes anterior a la fecha de fallecimiento, sobre la base de un servicio regular de la deuda, con un
										tope máximo, correspondiente al cupo autorizado por la entidad contratante.
									 </fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
									<fo:table-cell>
										<fo:block space-after="8cm"></fo:block>
									</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell >
								<fo:block line-height="7pt" text-align="right" keep-together="always">
									<fo:inline font-size="7pt" font-weight="bold">                
										Pág. 1 / 2
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
		<fo:block text-align="left" break-after="page"></fo:block>
			<fo:table  table-layout="fixed" text-align="justify" >
				<fo:table-column column-width="17cm"/>
					<fo:table-body>
					<fo:table-row>
							<fo:table-cell >
								<fo:block space-after="2cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Plazo de Vigencia: 
									</fo:inline>
									<fo:inline font-size="11pt"> 
										La cobertura regirá desde la fecha en que el banco otorga efectivamente la línea de
										crédito de sobregiro o la línea de emergencia y la Compañía Aseguradora acepta asumir el riesgo, hasta
										el día en que se produzca cualquiera de las dos circunstancias siguientes:1) que se cumpla la edad tope
										de cada cobertura, 2) que se extinga el crédito que dio origen al seguro.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Prima: 
									</fo:inline>	
									<fo:inline font-size="11pt"> 
										La prima total corresponde a la tasa indicada a continuación, dependiendo de la vigencia del
										crédito, aplicada sobre el monto asegurado inicial.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Para la línea de crédito de sobregiro,
									</fo:inline>	
									<fo:inline font-size="11pt"> 
										 la tasa es de 5,56 %o (por mil) anual sobre el saldo inicial con
										un mínimo de UF 0.4 y un máximo de UF 6.0.
									</fo:inline>
								</fo:block>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
										La tasa se aplica sobre el cupo total otorgado a la línea de crédito.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Para la línea de emergencia,
									</fo:inline>	
									<fo:inline font-size="11pt"> 
										la tasa es de 3,24 %o (por mil) por semestre con una prima mínima de
										UF 0.17 y prima máxima de UF 3 (primas brutas).
									</fo:inline>
								</fo:block>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
										La tasa se aplica sobre el cupo total otorgado a la línea de emergencia.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
											Las primas indicadas son referenciales. En caso que la aseguradora decida evaluar el riesgo específico,
											ello podría generar un cambio de las condiciones de aseguramiento y el aumento de la prima, sin
											perjuicio de su derecho a no otorgar en definitiva la cobertura solicitada.
									</fo:inline>
								</fo:block>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
										Declaro que, además del crédito que he solicitado al Banco, es mi voluntad contratar el seguro de
										desgravamen individualizado precedentemente, por el precio que se señala y estoy en conocimiento que
										puedo obtener el referido crédito con la misma tasa y demás condiciones que si no adquiriera tal seguro.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Exclusiones generales
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										Las exclusiones se encuentran contenidas en la póliza depositada en el registro de la S.V.S. bajo el
										código POL 2 2013 0331.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block space-after="0.4cm"></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt" font-weight="bold">                
										Consultas, Reclamos y Siniestros:
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt">                
										En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deberá comunicar con BCI
										Corredores de Seguros al teléfono (02) 25404953 o al e-mail: siniestrosbci@bci.cl., al teléfono del CRI
										de la Compañía de Seguros 6006000292 - desde celular 02 - 26799700 o en cualquiera de las oficinas
										de BCI Seguros Vida S.A.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<!-- Firmas de cliente-->
				<fo:block space-after="4cm"></fo:block>
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="11.5cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="4.5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-size="11pt" border-after-width="1pt" border-after-style="solid">
												&#0160; <xsl:value-of select="lineaEmergencia/nombreCliente"/>
												&#0160; &#0160; &#0160; &#0160; <xsl:value-of select="lineaEmergencia/rutCliente"/>
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" font-weight="bold">
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="2" >
										<fo:block space-after="0.3cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt" text-align="left"  padding-top="2pt" padding-left="1pt" border-top-color="black" border-top-style="solid">
											<fo:inline  font-size="11pt">
												Nombre completo y Nro de Cédula de Identidad del Cliente
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block font-size="11pt"  text-align="center"  padding-top="2pt" padding-left="1pt" border-top-color="black" border-top-style="solid">
											<fo:inline>
												Firma
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline  font-size="11pt">
												Fecha:
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell number-columns-spanned="3">
										<fo:block space-after="9cm"></fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline>
												&#0160;
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell >
										<fo:block line-height="7pt" text-align="right" keep-together="always">
											<fo:inline font-size="7pt" font-weight="bold">                
												Pág. 2 / 2
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- FIN INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO EN CUENTA CORRIENTE Y LINEA DE CRÉDITO DE EMERGENCIA DEL BANCO BCI-->
		</fo:flow>
	</fo:page-sequence>
	<!-- FIN INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO EN CUENTA CORRIENTE Y LINEA DE CRÉDITO DE EMERGENCIA DEL BANCO BCI-->
	</fo:root>
 </xsl:template>
</xsl:stylesheet>