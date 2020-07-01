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
												HOJA DE RESUMEN L�NEA DE EMERGENCIA
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
												&#0160;N� de Cuenta corriente Asociada
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
												&#0160;Producto Principal: L�nea de Cr�dito de Emergencia
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
												&#0160;Tasa de &#0160;Inter�s (1)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="left" >
											<fo:inline >
												&#0160;Tasa M�xima &#0160;Convencional vigente &#0160;(TMC)
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
												&#0160;Comisi�n de &#0160;Renovaci�n (2)(3)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												Comisi�n de cobro semestral. El primer cobro se activa con la primera utilizaci�n del producto.
												En dicho caso la tarifa asociada es de UF <xsl:value-of select="lineaEmergencia/comisionRenovacion"/> en cada renovaci�n seg�n detalla en "Anexo de Condiciones y tarifas", ac�pite D.-
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
												&#0160;Vigencia de Productos y frecuencia de renovaci�n
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
												&#0160;Anual y de renovaci�n autom�tica.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;L�nea de Sobregiro
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Anual y de renovaci�n autom�tica.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;L�nea de Cr�dito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Semestral y de renovaci�n autom�tica.
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
												&#0160;Seguro de desgravamen L�nea de Cr�dito de Emergencia
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
												&#0160;Compa��a de Seguros										
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
												DL 3.745 Sobre Impuesto de Timbres y Estampillas. Se devengar� s�lo sobre el monto utilizado de L�nea de Cr�dito de Emergencia.										
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
													Informaci�n:									 
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
											  &#0160;Inter�s Monetario (4)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Tasa M�xima Convencional (TMC) vigente a la �poca de la mora
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
											 El producto de que da cuenta esta Hoja Resumen, requiere del consumidor contratante Don (�a) 
											<fo:inline text-decoration="underline"><xsl:value-of select="lineaEmergencia/nombreCliente" />
											</fo:inline>, patrimonio o ingresos futuros suficientes para pagar comisiones, intereses y deuda capital, seg�n corresponda, durante todo el periodo de vigencia de L�nea de Cr�dito de Emergencia
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
												&#0160;Garant�as
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
																	<fo:inline>�</fo:inline>
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
																	<fo:inline>�</fo:inline>
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
											<fo:block text-align="center" font-size="9pt" >P�gina 1 de 2 </fo:block>
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
												(1).- La Tasa de inter�s asociada al uso de la L�nea de Cr�dito de Emergencia, corresponde a la Tasa M�xima Convencional &#0160;(TMC). El c�lculo de intereses es diario en funci�n del cupo utilizado y la TMC vigente a la fecha del c�lculo.
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
												(2).- Esta comisi�n es exenta de IVA.- 
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
												(3).- La Comisi�n de Renovaci�n se comienza a cobrar a partir de la primera utilizaci�n de la L�nea de Cr�dito de Emergencia.
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
												(4).- La TMC vigente a la �poca de la mora, se puede consultar en la p�gina internet de la Comisi�n para el Mercado Financiero (CMFChile).
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
												El valor en pesos se�alado precedentemente, se ha calculado el valor de la UF del d�a 
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
											<fo:block text-align="center" font-size="9pt" >P�gina 2 de 2 </fo:block>
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
													CONTRATO DE APERTURA DE L�NEA DE CR�DITO DE EMERGENCIA
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
													BANCO DE CR�DITO E INVERSIONES,
												</fo:inline>
												en adelante "el Banco", por una parte, y el
												<fo:inline font-size="11pt" font-weight="bold"> 
													"CLIENTE"
												</fo:inline>
												 que se individualiza al final de este instrumento, en adelante el  "Cliente", se ha acordado celebrar el presente Contrato de Apertura de L�nea de Cr�dito de Emergencia, tambi�n llamada a efectos de este contrato como "LCE" o "LEM".
											</fo:inline>
										</fo:block>
																				
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                              &#0160;  
                                            </fo:inline>
										</fo:block>  
										
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. Por este acto y a trav�s de este medio, el Cliente contrata con el Banco, la apertura de una L�nea de Cr�dito de Emergencia o LCE, que tiene por objeto incrementar la disponibilidad de pago del Cliente ante eventos que superen su saldo disponible en Cuenta Corriente o en otras l�neas de cr�dito, entre �stas, la L�nea de Sobregiro que el Cliente hubiere contratado con el Banco. 
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operar� de manera autom�tica, y con cargo a ella, y no habiendo saldos disponibles en la Cuenta Corriente u otras L�neas de Cr�dito, se cubrir�n (i) los cargos que disponga el Cliente, ya sea a trav�s del giro de un cheque, de un Pago Autom�tico de Cuentas -PAC- , giro en Cajero Autom�tico o mediante cualquier otro medio, y (ii) los dem�s cargos que efect�e el Banco. Con todo, no se cargar�n a la LCE, a�n cuando exista cupo disponible, entre otros, las comisiones de mantenci�n y administraci�n de los productos.
													 </fo:inline>
										</fo:block>		 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Produci�ndose una situaci�n de sobregiro por cualesquiera de las causas singularizadas precedentemente, el Banco proceder� a cargar la LCE en el orden en que se produzcan y registren tales eventos.
													 </fo:inline>
                                        </fo:block>                                           
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	  4. Cada vez que existan fondos disponibles en la Cuenta Corriente o L�nea de Sobregiro, si la hubiere, y la LCE registrare saldos deudores, se abonar� de manera autom�tica la citada LCE, con cargo a las se�aladas disponibilidades.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    5. Sin perjuicio de lo se�alado en el numeral precedente, para el evento de que no haya fondos disponibles en la Cuenta Corriente ni en la L�nea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el Banco le informe. Con todo, la LCE ha de hallarse �ntegramente pagada, tanto en capital, intereses y comisiones, a m�s tardar al cumplirse el per�odo de vigencia pactado.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   6. El plazo de la LCE ser� de 6 meses, plazo que se renovar� autom�ticamente, por per�odos iguales y sucesivos, salvo que cualesquiera de las partes decida ponerle t�rmino por escrito con a lo menos 15 d�as de anticipaci�n. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco podr� poner t�rmino a la LCE cuando se haya verificado alguna o algunas de las siguientes causales:
											</fo:inline>
										</fo:block>		
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">		
										<fo:inline font-size="11pt">                
                                                    a) Cuando el Cliente hiciere un uso inadecuado del producto o servicio, tales como, sobregiros no pactados; �rdenes de no pago y/o protesto de cheques frecuentes; atrasos en el servicio de sus deudas; no acreditaci�n del origen de los fondos depositados en sus cuentas; actividades de origen desconocido, riesgosas o contrarias a la ley, etc; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    b) Muerte del Cliente o Disoluci�n en el caso de personas jur�dicas. En el caso de tratarse de una  cuenta corriente pluripersonal, la muerte de uno cualquiera de los titulares; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    c) Insolvencia, declaraci�n de interdicci�n, presentaci�n de convenios, quiebra o tener el cliente la calidad de deudor en un procedimiento concursal de liquidaci�n.
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    d) Cambios objetivos en la condici�n econ�mica, financiera o de mercado en que el Cliente opera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    e) Deterioro en el comportamiento de pago del Cliente, o cuando habi�ndosele solicitado, �ste no aportase al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situaci�n econ�mica o financiera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    f) Mantener inactivo o sin uso, por m�s de un a�o los productos y servicios; 
                                            </fo:inline>
                                        </fo:block>
										 <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    g) Incurrir en conductas agraviantes u ofensivas en contra del personal del Banco;
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    h) Integrar el Cliente, la n�mina de personas con las cuales al Banco le est� impedido operar; y,
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    i) La revocaci�n por parte del Cliente, de uno o m�s mandatos cuya ejecuci�n interesare al Banco o dificultare prestar los servicios contratados.
                                            </fo:inline>
                                        </fo:block>
										
			                            <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                        <fo:inline font-size="11pt">                
                                                    El Banco deber� comunicar el t�rmino del contrato por escrito al domicilio o al correo electr�nico registrado, con a lo menos 15 d�as de anticipaci�n, o con aquella que se�alen las normas legales y administrativas vigentes. El no ejercicio por parte del Banco de las facultades antes mencionadas, no supone renuncia a ejercerlas en el futuro.
                                            </fo:inline>
                                        </fo:block>	
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   Las partes acuerdan tambi�n que, las causales antes se�aladas autorizan al Banco para proceder a la suspensi�n o bloqueo inmediato del producto o servicio de que se trate.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   8. El monto de la LCE, podr� ser aumentado por el Banco previo consentimiento del Cliente, salvo en aquellos casos que correspondan a la aplicaci�n de modalidades de aumento previamente acordadas con �ste. El Cliente y el Banco acuerdan que este �ltimo pueda aumentar el monto de la LCE una vez al a�o, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o m�s de su cupo disponible en alg�n mes del a�o. Para estos efectos, el Banco le informar� el aumento de dicha l�nea por correo electr�nico o a trav�s de cualquier otro medio de comunicaci�n. El Banco podr� rebajar el monto de la LCE con tal que a esa fecha el Cliente no se encuentre haciendo uso de la l�nea por un monto superior al nuevo l�mite.
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
																	    9. En caso de t�rmino de la LCE se har� exigible el pago inmediato del saldo total adeudado a esa fecha, pudiendo el Banco cargar la Cuenta Corriente, si tuviere fondos disponibles. Las obligaciones que resulten adeudadas por este concepto, tendr�n el car�cter de indivisibles.
															</fo:inline>
										</fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        10. La LCE devenga intereses equivalentes a la tasa m�xima convencional vigente para operaciones no reajustables a m�s de 90 d�as. Los cr�ditos cursados al amparo de la LCE devengar�n intereses desde la fecha en que se cursen y hasta la de su pago efectivo, los que se calcular�n y aplicar�n sobre el saldo del respectivo cr�dito d�a a d�a. 
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        11. El Cliente otorga mandato  al Banco, para que �ste, actuando en su nombre y representaci�n, autocontratando, suscriba y complete uno o m�s pagar�s, a fin de documentar eficazmente los cr�ditos que se cursen con cargo a la LCE. En el ejercicio de este mandato, el Banco podr� renunciar a la obligaci�n de protesto, facultar para hacer autorizar la firma de sus apoderados que suscriban el pagar�, ante Notario P�blico, de manera que el pagar� tenga m�rito ejecutivo para su respectiva cobranza judicial. El Cliente reconoce que el presente mandato se otorga en inter�s del Banco y subsistir� a�n despu�s del t�rmino de la presente L�nea, s�lo para el cobro del saldo deudor con el Banco.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        12. El Cliente faculta expresamente al Banco para delegar el presente mandato en los mismos t�rminos, en la sociedad Servicios de Normalizaci�n y Cobranza - Normaliza S.A., filial del Banco, o en aquella otra persona natural o jur�dica que el Banco determine. Con todo, en el caso que el Cliente hubiere contratado la L�nea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el mandato e instrucciones para completar el pagar� que con motivo de la contrataci�n de dicha L�nea hubiere otorgado e impartido al Banco, se entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagar�, las obligaciones derivadas de la utilizaci�n de la LCE objeto de este contrato.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        13. Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecuci�n y operaci�n ser�n de cargo exclusivo del Cliente, facult�ndose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de cr�dito de que sea titular en el Banco. 
                                                            </fo:inline>
                                        </fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        14. Los mandatos que se hubieren otorgado en el Contrato ser�n revocables, una vez que est�n totalmente extinguidas las obligaciones a favor del Bci. Con todo, la revocaci�n de uno o algunos de aquellos, deber� comunicarse por escrito al Banco en cualquiera de sus sucursales, y producir� sus efectos, transcurridos 15 d�as de haberse notificado la revocaci�n al Banco. Trat�ndose de la revocaci�n del mandato para pagar autom�ticamente los cr�ditos adeudados al Banco, ella surtir� efecto a m�s tardar en el per�odo subsiguiente de pago o abono que corresponda a la obligaci�n.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        15. La rendici�n de cuentas del ejercicio del o los mandatos que el Cliente otorgue al Banco, se verificar� mediante el env�o a aquel de los comprobantes, cartolas u otros documentos (en copia u original seg�n corresponda) que el Banco hubiere suscrito en su representaci�n, y se remitir�n al domicilio o correo electr�nico que el Cliente haya registrado en el Banco o en su sitio privado de la p�gina web del banco.

                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        16. Para efectos de determinar las tarifas o comisiones, el Banco estar� facultado para establecer criterios objetivos de segmentaci�n de tal manera que el Cliente pueda conocer la tarifas con anticipaci�n y que le corresponde en funci�n de dicha segmentaci�n. El banco podr� efectuar una reclasificaci�n de los Clientes en atenci�n a su comportamiento u otras variables. Las tarifas estar�n disponibles en los tarifarios del banco y sitio www.bci.cl, y que el Cliente podr� consultar.
                                                            </fo:inline>
                                        </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													17.	Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuar�n a la direcci�n de correo electr�nico que el cliente haya informado al Banco y �ste haya registrado. En su defecto, se remitir�n por escrito al �ltimo domicilio que tenga registrado, ya sea por carta o en los estados de cuenta o cartolas o por Internet. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													18.	El Cliente declara haber recibido el volante que contiene la informaci�n atingente a las empresas que prestan los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el pago de estas obligaciones. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													19.	Servicio al Cliente Bci.- En caso que el Cliente quisiera formular alguna consulta o reclamo, podr� hacerlo por tel�fono; a trav�s de la p�gina web del Banco; o  personalmente en cualesquiera de sus oficinas o sucursales Bci y Bci Nova.  Mayor informaci�n podr� encontrar en www.bci.cl, www.tbanc.cl o www.bcinova.cl
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
																		COMISI�N LINEA DE EMERGENCIA (LCE)
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Comisi�n de Renovaci�n: Comisi�n de cobro semestral. El primer cobro se activa con la primera utilizaci�n del producto. En dicho caso la tarifa asociada es de UF 3 en cada renovaci�n (**)
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
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">Cubre el cupo utilizado de la LCE, con un tope m�ximo correspondiente al cupo autorizado.</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">0,324% por semestre sobre cupo aprobado, con prima m�nima de UF 0,17 y m�ximo de UF 3</fo:block>
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
																	(*)El Cliente y el Banco acuerdan que este �ltimo podr� aumentar el monto de las l�neas una vez al a�o, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o m�s de su cupo disponible en alg�n mes del a�o. El Banco informar� el aumento, por correo electr�nico o a trav�s de cualquier otro medio de comunicaci�n.
																	</fo:inline>	
																</fo:block>
																<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																	<fo:inline font-size="11pt">  																	
																	(**) Comisi�n exenta de IVA.                                                
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
												Declaraci�n del cliente:
	                                       </fo:inline>
										   <fo:inline font-size="11pt">                
												Es mi voluntad que toda comunicaci�n o aviso a que el Banco se encuentre obligado con motivo de lo establecido en este contrato, sea remitido a la direcci�n de correo electr�nico, indicada al final del presente contrato. 
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
															  N� Cuenta Corriente asociada: &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/> 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
										</fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt" text-decoration="underline">                
                                                Individualizaci�n de las partes:
                                            </fo:inline>
										</fo:block>                                                                                               
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												 Nombre Cliente o Titular (1): &#0160; <xsl:value-of select="lineaEmergencia/nombreTitular"/> 
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												C�dula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutTitular"/>
                                            </fo:inline>
                                        </fo:block>              
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
													Direcci�n Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioTitular"/>
                                            </fo:inline>
                                        </fo:block>      
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Comuna: &#0160; 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Regi�n: &#0160; 
											</fo:inline>
										</fo:block>					
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												Correo y/o Casilla Electr�nica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoTitular"/>
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												N� de Tel�fono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularTitular"/>
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
													C�dula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutDirecto"/> 
												</fo:inline>
											</fo:block>              
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Direcci�n Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioDirecto"/>
												</fo:inline>
											</fo:block>      
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Comuna: &#0160; 
												</fo:inline>
											</fo:block>
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Regi�n: &#0160; 
												</fo:inline>
											</fo:block>					
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Correo y/o Casilla Electr�nica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoDirecto"/>
												</fo:inline>
											</fo:block>        
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													N� de Tel�fono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularDirecto"/>
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
									    					<fo:block text-align="left">Banco: Banco de Cr�dito e Inversiones  </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Rut N�: 97.006.000-6 </fo:block>
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
												HOJA DE RESUMEN L�NEA DE EMERGENCIA
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
												&#0160;N� de Cuenta corriente Asociada
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
												&#0160;Producto Principal: L�nea de Cr�dito de Emergencia
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
												&#0160;Tasa de &#0160;Inter�s (1)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="left" >
											<fo:inline >
												&#0160;Tasa M�xima &#0160;Convencional vigente &#0160;(TMC)
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
												&#0160;Comisi�n de &#0160;Renovaci�n (2)(3)
											</fo:inline>
										</fo:block>
								    </fo:table-cell>
								    <fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="14pt"  text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline>
												Comisi�n de cobro semestral. El primer cobro se activa con la primera utilizaci�n del producto.
												En dicho caso la tarifa asociada es de UF <xsl:value-of select="lineaEmergencia/comisionRenovacion"/> en cada renovaci�n seg�n detalla en "Anexo de Condiciones y tarifas", ac�pite D.-
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
												&#0160;Vigencia de Productos y frecuencia de renovaci�n
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
												&#0160;Anual y de renovaci�n autom�tica.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;L�nea de Sobregiro
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Anual y de renovaci�n autom�tica.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid" background-color="#c0c0c0">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline >
												&#0160;L�nea de Cr�dito de Emergencia
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline start-indent="2pt" >
												&#0160;Semestral y de renovaci�n autom�tica.
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
												&#0160;Seguro de desgravamen L�nea de Cr�dito de Emergencia
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
												&#0160;Compa��a de Seguros										
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
												DL 3.745 Sobre Impuesto de Timbres y Estampillas. Se devengar� s�lo sobre el monto utilizado de L�nea de Cr�dito de Emergencia.										
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
													Informaci�n:									 
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
											  &#0160;Inter�s Monetario (4)
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="9pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
											<fo:inline>
												&#0160;Tasa M�xima Convencional (TMC) vigente a la �poca de la mora
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
											 El producto de que da cuenta esta Hoja Resumen, requiere del consumidor contratante Don (�a) 
											<fo:inline text-decoration="underline"><xsl:value-of select="lineaEmergencia/nombreCliente" />
											</fo:inline>, patrimonio o ingresos futuros suficientes para pagar comisiones, intereses y deuda capital, seg�n corresponda, durante todo el periodo de vigencia de L�nea de Cr�dito de Emergencia
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
												&#0160;Garant�as
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
																	<fo:inline>�</fo:inline>
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
																	<fo:inline>�</fo:inline>
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
											<fo:block text-align="center" font-size="9pt" >P�gina 1 de 2 </fo:block>
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
												(1).- La Tasa de inter�s asociada al uso de la L�nea de Cr�dito de Emergencia, corresponde a la Tasa M�xima Convencional &#0160;(TMC). El c�lculo de intereses es diario en funci�n del cupo utilizado y la TMC vigente a la fecha del c�lculo.
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
												(2).- Esta comisi�n es exenta de IVA.- 
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
												(3).- La Comisi�n de Renovaci�n se comienza a cobrar a partir de la primera utilizaci�n de la L�nea de Cr�dito de Emergencia.
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
												(4).- La TMC vigente a la �poca de la mora, se puede consultar en la p�gina internet de la Comisi�n para el Mercado Financiero (CMFChile).
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
												El valor en pesos se�alado precedentemente, se ha calculado el valor de la UF del d�a 
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
											<fo:block text-align="center" font-size="9pt" >P�gina 2 de 2 </fo:block>
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
													CONTRATO DE APERTURA DE L�NEA DE CR�DITO DE EMERGENCIA
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
													BANCO DE CR�DITO E INVERSIONES,
												</fo:inline>
												en adelante "el Banco", por una parte, y el
												<fo:inline font-size="11pt" font-weight="bold"> 
													"CLIENTE"
												</fo:inline>
												 que se individualiza al final de este instrumento, en adelante el  "Cliente", se ha acordado celebrar el presente Contrato de Apertura de L�nea de Cr�dito de Emergencia, tambi�n llamada a efectos de este contrato como "LCE" o "LEM".
											</fo:inline>
										</fo:block>
																				
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                              &#0160;  
                                            </fo:inline>
										</fo:block>  
										
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  1. Por este acto y a trav�s de este medio, el Cliente contrata con el Banco, la apertura de una L�nea de Cr�dito de Emergencia o LCE, que tiene por objeto incrementar la disponibilidad de pago del Cliente ante eventos que superen su saldo disponible en Cuenta Corriente o en otras l�neas de cr�dito, entre �stas, la L�nea de Sobregiro que el Cliente hubiere contratado con el Banco. 
													 </fo:inline>
                                       </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
													<fo:inline font-size="11pt">
																	  2. La LCE operar� de manera autom�tica, y con cargo a ella, y no habiendo saldos disponibles en la Cuenta Corriente u otras L�neas de Cr�dito, se cubrir�n (i) los cargos que disponga el Cliente, ya sea a trav�s del giro de un cheque, de un Pago Autom�tico de Cuentas -PAC- , giro en Cajero Autom�tico o mediante cualquier otro medio, y (ii) los dem�s cargos que efect�e el Banco. Con todo, no se cargar�n a la LCE, a�n cuando exista cupo disponible, entre otros, las comisiones de mantenci�n y administraci�n de los productos.
													 </fo:inline>
										</fo:block>		 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            		<fo:inline font-size="11pt">
																	  3. Produci�ndose una situaci�n de sobregiro por cualesquiera de las causas singularizadas precedentemente, el Banco proceder� a cargar la LCE en el orden en que se produzcan y registren tales eventos.
													 </fo:inline>
                                        </fo:block>                                           
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	  4. Cada vez que existan fondos disponibles en la Cuenta Corriente o L�nea de Sobregiro, si la hubiere, y la LCE registrare saldos deudores, se abonar� de manera autom�tica la citada LCE, con cargo a las se�aladas disponibilidades.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    5. Sin perjuicio de lo se�alado en el numeral precedente, para el evento de que no haya fondos disponibles en la Cuenta Corriente ni en la L�nea de Sobregiro, el Cliente se obliga a efectuar abonos a la LCE, con la frecuencia y por los importes que el Banco le informe. Con todo, la LCE ha de hallarse �ntegramente pagada, tanto en capital, intereses y comisiones, a m�s tardar al cumplirse el per�odo de vigencia pactado.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   6. El plazo de la LCE ser� de 6 meses, plazo que se renovar� autom�ticamente, por per�odos iguales y sucesivos, salvo que cualesquiera de las partes decida ponerle t�rmino por escrito con a lo menos 15 d�as de anticipaci�n. 
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	    7. El Banco podr� poner t�rmino a la LCE cuando se haya verificado alguna o algunas de las siguientes causales:
											</fo:inline>
										</fo:block>		
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">		
										<fo:inline font-size="11pt">                
                                                    a) Cuando el Cliente hiciere un uso inadecuado del producto o servicio, tales como, sobregiros no pactados; �rdenes de no pago y/o protesto de cheques frecuentes; atrasos en el servicio de sus deudas; no acreditaci�n del origen de los fondos depositados en sus cuentas; actividades de origen desconocido, riesgosas o contrarias a la ley, etc; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    b) Muerte del Cliente o Disoluci�n en el caso de personas jur�dicas. En el caso de tratarse de una  cuenta corriente pluripersonal, la muerte de uno cualquiera de los titulares; 
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    c) Insolvencia, declaraci�n de interdicci�n, presentaci�n de convenios, quiebra o tener el cliente la calidad de deudor en un procedimiento concursal de liquidaci�n.
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    d) Cambios objetivos en la condici�n econ�mica, financiera o de mercado en que el Cliente opera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    e) Deterioro en el comportamiento de pago del Cliente, o cuando habi�ndosele solicitado, �ste no aportase al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situaci�n econ�mica o financiera;
                                            </fo:inline>
                                        </fo:block>
                                      <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    f) Mantener inactivo o sin uso, por m�s de un a�o los productos y servicios; 
                                            </fo:inline>
                                        </fo:block>
										 <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    g) Incurrir en conductas agraviantes u ofensivas en contra del personal del Banco;
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    h) Integrar el Cliente, la n�mina de personas con las cuales al Banco le est� impedido operar; y,
                                            </fo:inline>
                                        </fo:block> <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" padding-left="5pt">      
                                        <fo:inline font-size="11pt">                
                                                    i) La revocaci�n por parte del Cliente, de uno o m�s mandatos cuya ejecuci�n interesare al Banco o dificultare prestar los servicios contratados.
                                            </fo:inline>
                                        </fo:block>
										
			                            <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                        <fo:inline font-size="11pt">                
                                                    El Banco deber� comunicar el t�rmino del contrato por escrito al domicilio o al correo electr�nico registrado, con a lo menos 15 d�as de anticipaci�n, o con aquella que se�alen las normas legales y administrativas vigentes. El no ejercicio por parte del Banco de las facultades antes mencionadas, no supone renuncia a ejercerlas en el futuro.
                                            </fo:inline>
                                        </fo:block>	
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   Las partes acuerdan tambi�n que, las causales antes se�aladas autorizan al Banco para proceder a la suspensi�n o bloqueo inmediato del producto o servicio de que se trate.
											</fo:inline>
										</fo:block>
                                       <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-size="11pt">                
																	   8. El monto de la LCE, podr� ser aumentado por el Banco previo consentimiento del Cliente, salvo en aquellos casos que correspondan a la aplicaci�n de modalidades de aumento previamente acordadas con �ste. El Cliente y el Banco acuerdan que este �ltimo pueda aumentar el monto de la LCE una vez al a�o, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o m�s de su cupo disponible en alg�n mes del a�o. Para estos efectos, el Banco le informar� el aumento de dicha l�nea por correo electr�nico o a trav�s de cualquier otro medio de comunicaci�n. El Banco podr� rebajar el monto de la LCE con tal que a esa fecha el Cliente no se encuentre haciendo uso de la l�nea por un monto superior al nuevo l�mite.
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
																	    9. En caso de t�rmino de la LCE se har� exigible el pago inmediato del saldo total adeudado a esa fecha, pudiendo el Banco cargar la Cuenta Corriente, si tuviere fondos disponibles. Las obligaciones que resulten adeudadas por este concepto, tendr�n el car�cter de indivisibles.
															</fo:inline>
										</fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        10. La LCE devenga intereses equivalentes a la tasa m�xima convencional vigente para operaciones no reajustables a m�s de 90 d�as. Los cr�ditos cursados al amparo de la LCE devengar�n intereses desde la fecha en que se cursen y hasta la de su pago efectivo, los que se calcular�n y aplicar�n sobre el saldo del respectivo cr�dito d�a a d�a. 
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        11. El Cliente otorga mandato  al Banco, para que �ste, actuando en su nombre y representaci�n, autocontratando, suscriba y complete uno o m�s pagar�s, a fin de documentar eficazmente los cr�ditos que se cursen con cargo a la LCE. En el ejercicio de este mandato, el Banco podr� renunciar a la obligaci�n de protesto, facultar para hacer autorizar la firma de sus apoderados que suscriban el pagar�, ante Notario P�blico, de manera que el pagar� tenga m�rito ejecutivo para su respectiva cobranza judicial. El Cliente reconoce que el presente mandato se otorga en inter�s del Banco y subsistir� a�n despu�s del t�rmino de la presente L�nea, s�lo para el cobro del saldo deudor con el Banco.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        12. El Cliente faculta expresamente al Banco para delegar el presente mandato en los mismos t�rminos, en la sociedad Servicios de Normalizaci�n y Cobranza - Normaliza S.A., filial del Banco, o en aquella otra persona natural o jur�dica que el Banco determine. Con todo, en el caso que el Cliente hubiere contratado la L�nea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el mandato e instrucciones para completar el pagar� que con motivo de la contrataci�n de dicha L�nea hubiere otorgado e impartido al Banco, se entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagar�, las obligaciones derivadas de la utilizaci�n de la LCE objeto de este contrato.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        13. Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecuci�n y operaci�n ser�n de cargo exclusivo del Cliente, facult�ndose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de cr�dito de que sea titular en el Banco. 
                                                            </fo:inline>
                                        </fo:block>
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        14. Los mandatos que se hubieren otorgado en el Contrato ser�n revocables, una vez que est�n totalmente extinguidas las obligaciones a favor del Bci. Con todo, la revocaci�n de uno o algunos de aquellos, deber� comunicarse por escrito al Banco en cualquiera de sus sucursales, y producir� sus efectos, transcurridos 15 d�as de haberse notificado la revocaci�n al Banco. Trat�ndose de la revocaci�n del mandato para pagar autom�ticamente los cr�ditos adeudados al Banco, ella surtir� efecto a m�s tardar en el per�odo subsiguiente de pago o abono que corresponda a la obligaci�n.
                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        15. La rendici�n de cuentas del ejercicio del o los mandatos que el Cliente otorgue al Banco, se verificar� mediante el env�o a aquel de los comprobantes, cartolas u otros documentos (en copia u original seg�n corresponda) que el Banco hubiere suscrito en su representaci�n, y se remitir�n al domicilio o correo electr�nico que el Cliente haya registrado en el Banco o en su sitio privado de la p�gina web del banco.

                                                            </fo:inline>
                                        </fo:block> 
                                        <fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
                                                                        16. Para efectos de determinar las tarifas o comisiones, el Banco estar� facultado para establecer criterios objetivos de segmentaci�n de tal manera que el Cliente pueda conocer la tarifas con anticipaci�n y que le corresponde en funci�n de dicha segmentaci�n. El banco podr� efectuar una reclasificaci�n de los Clientes en atenci�n a su comportamiento u otras variables. Las tarifas estar�n disponibles en los tarifarios del banco y sitio www.bci.cl, y que el Cliente podr� consultar.
                                                            </fo:inline>
                                        </fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													17.	Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuar�n a la direcci�n de correo electr�nico que el cliente haya informado al Banco y �ste haya registrado. En su defecto, se remitir�n por escrito al �ltimo domicilio que tenga registrado, ya sea por carta o en los estados de cuenta o cartolas o por Internet. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													18.	El Cliente declara haber recibido el volante que contiene la informaci�n atingente a las empresas que prestan los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el pago de estas obligaciones. 
												</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													19.	Servicio al Cliente Bci.- En caso que el Cliente quisiera formular alguna consulta o reclamo, podr� hacerlo por tel�fono; a trav�s de la p�gina web del Banco; o  personalmente en cualesquiera de sus oficinas o sucursales Bci y Bci Nova.  Mayor informaci�n podr� encontrar en www.bci.cl, www.tbanc.cl o www.bcinova.cl
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
																		COMISI�N LINEA DE EMERGENCIA (LCE)
																	</fo:inline>
																</fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Comisi�n de Renovaci�n: Comisi�n de cobro semestral. El primer cobro se activa con la primera utilizaci�n del producto. En dicho caso la tarifa asociada es de UF 3 en cada renovaci�n (**)
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
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">Cubre el cupo utilizado de la LCE, con un tope m�ximo correspondiente al cupo autorizado.</fo:block>
												  </fo:table-cell>
												  <fo:table-cell border-bottom="0.5pt solid black">
													<fo:block font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="justify" vertical-align="middle" font-weight="normal">0,324% por semestre sobre cupo aprobado, con prima m�nima de UF 0,17 y m�ximo de UF 3</fo:block>
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
																	(*)El Cliente y el Banco acuerdan que este �ltimo podr� aumentar el monto de las l�neas una vez al a�o, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o m�s de su cupo disponible en alg�n mes del a�o. El Banco informar� el aumento, por correo electr�nico o a trav�s de cualquier otro medio de comunicaci�n.
																	</fo:inline>	
																</fo:block>
																<fo:block font-size="12pt"  text-align="left"  padding-top="2pt" padding-left="1pt">
																	<fo:inline font-size="11pt">  																	
																	(**) Comisi�n exenta de IVA.                                                
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
												Declaraci�n del cliente:
	                                       </fo:inline>
										   <fo:inline font-size="11pt">                
												Es mi voluntad que toda comunicaci�n o aviso a que el Banco se encuentre obligado con motivo de lo establecido en este contrato, sea remitido a la direcci�n de correo electr�nico, indicada al final del presente contrato. 
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
															  N� Cuenta Corriente asociada: &#0160; <xsl:value-of select="lineaEmergencia/cuentaCorriente"/> 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" text-align="left" keep-together="always">
											<fo:inline font-size="11pt">                
												&#0160;  
											</fo:inline>
										</fo:block>  
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt" text-decoration="underline">                
                                                Individualizaci�n de las partes:
                                            </fo:inline>
										</fo:block>                                                                                               
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												 Nombre Cliente o Titular (1): &#0160; <xsl:value-of select="lineaEmergencia/nombreTitular"/> 
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												C�dula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutTitular"/>
                                            </fo:inline>
                                        </fo:block>              
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
													Direcci�n Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioTitular"/>
                                            </fo:inline>
                                        </fo:block>      
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Comuna: &#0160; 
											</fo:inline>
										</fo:block>
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:inline font-size="11pt">                
													Regi�n: &#0160; 
											</fo:inline>
										</fo:block>					
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												Correo y/o Casilla Electr�nica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoTitular"/>
                                            </fo:inline>
                                        </fo:block>        
										<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
                                            <fo:inline font-size="11pt">                
												N� de Tel�fono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularTitular"/>
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
													C�dula de Identidad: &#0160; <xsl:value-of select="lineaEmergencia/rutDirecto"/> 
												</fo:inline>
											</fo:block>              
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Direcci�n Particular: &#0160; <xsl:value-of select="lineaEmergencia/direccionDomicilioDirecto"/>
												</fo:inline>
											</fo:block>      
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Comuna: &#0160; 
												</fo:inline>
											</fo:block>
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
														Regi�n: &#0160; 
												</fo:inline>
											</fo:block>					
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													Correo y/o Casilla Electr�nica: &#0160; <xsl:value-of select="lineaEmergencia/correoEletronicoDirecto"/>
												</fo:inline>
											</fo:block>        
											<fo:block line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
												<fo:inline font-size="11pt">                
													N� de Tel�fono Celular: &#0160; <xsl:value-of select="lineaEmergencia/telefonoCelularDirecto"/>
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
									    					<fo:block text-align="left">Banco: Banco de Cr�dito e Inversiones  </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="left">Rut N�: 97.006.000-6 </fo:block>
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
									N� OPERACI�N: ___________________
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
										C�dula Nacional de Identidad
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
										Cta. Cte. N�
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
										L�nea de Emergencia
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
										Tipo Cr�dito
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
										Garant�a Ofrecida
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
										Objetivo del Cr�dito
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
										D�a de Pago (Cr�d. Cuotas)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										&#0160;
									</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block  font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										N�mero Cuotas
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
										C�dula Nacional de Identidad
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
										Cta. Cte. N�
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
										Declaro bajo juramento que mientras mantenga deudas pendientes a favor del Banco de Cr�dito e Inversiones,
										me comprometo a conservar inc�lume el patrimonio declarado en el o los estados de situaci�n y me obligo a
										comunicarles por escrito y con la debida anticipaci�n, todo hecho, acto o contrato que pueda disminuir o
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
										corriente(s) las sumas adeudadas provenientes del pr�stamo solicitado incluyendo capital, intereses y gastos,
										como as� tambi�n, en el caso de no ser cancelado oportunamente o no existir fondos disponibles en la(s)
										cuenta(s) corriente(s), aplicar a su pago cualquier otro cr�dito a mi favor que exista en el BANCO, ya sean
										saldos en cuenta vista, dep�sitos a la vista, dep�sitos a plazo, valores en custodia, fondos mutuos en BCI
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
										presentados son fidedignos y que conozco el texto del art�culo 160 de la Ley General de Bancos.
										Autorizo al Banco de Cr�dito e Inversiones para pedir para su uso exclusivo, en los t�rminos del art�culo 4� de la
										ley 19.628, a la Administradora de Fondos de Pensiones donde efect�o mis cotizaciones previsionales, y autorizo
										asimismo a �sta, para entregar directamente al Banco o a trav�s de Previred S.A., informaci�n sobre las aludidas
										cotizaciones de los �ltimos 12 meses precedentes a cualquiera solicitud de cualquier tipo de cr�dito o de otro
										servicio bancario para los que tal informaci�n y la que derive de aquella, pueda ser de utilidad para evaluar el
										otorgamiento del pr�stamo o servicio, sea de la naturaleza que fuere.
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
<!-- Fin 1� Pagina de Contrato-->
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
											En este acto otorgamos mandato al Banco de Cr�dito e Inversiones para
											que en su nombre y representaci�n, incluso con facultades expresas para autocontratar y obrando a trav�s de
											cualquiera de sus apoderados o en quien el Banco delegue, suscriba y/o complete uno o m�s pagar�s, y
											reconozca deudas en beneficio y a la orden del Banco de Cr�dito e Inversiones, todo ello con el prop�sito de
											documentar en esta forma el o los saldos deudores, por los montos de capital, intereses, costas y comisiones,
											que se originen con motivo del cobro de boletas de garant�a tomadas por el suscrito y emitidas por el Banco, al
											amparo de la L�nea de Cr�dito vigente. El o los pagar�s que se suscriban en virtud de este mandato podr�n
											extenderse a la vista o a plazo y en caso de no pago devengar�n la tasa de inter�s m�xima convencional para
											operaciones de cr�dito de dinero en moneda nacional. Asimismo, por el presente instrumento facultamos al
											Banco de Cr�dito e Inversiones para que, en conformidad a lo previsto en el Art�culo 11 y
											107 de la Ley 18092 del a�o 1982 sobre Letra de Cambio y Pagar�, incorpore en el o los instrumentos mercantiles
											que documenten los cr�ditos otorgados en virtud de esta solicitud de cr�dito o el Contrato de Apertura de L�nea
											de Cr�dito destinada a cubrir eventuales pagos de boletas de garant�a, la totalidad de las menciones exigidas por
											la Ley, como por ejemplo, su fecha de emisi�n, de vencimiento, la cantidad adeudada, la tasa de inter�s u otras,
											determinando en �l nuestra obligaci�n de pagar la cantidad de dinero solicitada en este acto o aquella que en
											definitiva apruebe el Banco al dorso de esta solicitud, si dicha cantidad fuere diferente. Liberamos al Banco de
											Cr�dito e Inversiones de la obligaci�n de rendir cuenta de su gesti�n.
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
											Faculto (facultamos) al Banco para aceptar instrucciones o solicitudes que yo imparta a trav�s
											medios remotos, especialmente v�a red internet u otros, v�a electr�nica, satelital o telef�nica, que est�n
											disponibles, y reconozco (reconocemos) que tales instrucciones realizadas por dichos medios constituye
											manifestaci�n expresa de mi (nuestra) voluntad, de aceptar las condiciones y modalidades bajo las cuales se
											presta el servicio, como tambi�n de las responsabilidades que asumo (asumimos) al hacer uso de tales canales y
											de la informaci�n contenida en ellos. Asimismo, autorizo (autorizamos) al Banco para que me (nos) provea en
											forma remota, de todos aquellos servicios en que normalmente se requiere mi (nuestra) presencia f�sica,
											asimilando como medio v�lido de autorizaci�n cuando as� lo requiera, a la firma electr�nica, mi clave secreta que
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
											Reconozco(reconocemos) haber recibido por parte del Banco de Cr�dito e Inversiones informaci�n detallada de
											las comisiones que el Banco cobra por concepto de otorgamiento de cr�dito y procesos asociados a �ste, como
											en el caso de reprogramaci�n, pr�rroga y reestructuraci�n entre otros.
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
											Declaro (Declaramos) haber recibido informaci�n detallada y aceptar que existen recargos en caso de mora o
											simple retardo en el pago de la obligaci�n de cr�dito de dinero de que da cuenta la presente solicitud y adem�s
											por concepto de la cobranza extrajudicial de cr�ditos impagos, incluyendo honorarios, a partir de la fecha que se
											indica m�s adelante, los cuales ser�n cobrados por la empresa &#x201C;Servicios de Normalizaci�n y Cobranza
											-Normaliza S.A.&#x201D; o por aquella que el BANCO designare en su oportunidad la que actuar� en nombre y en
											representaci�n e inter�s del BANCO en las gestiones de cobranza extrajudicial.
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
											La cobranza extrajudicial se efectuar� en horario de 8:00 a 20:00 horas.
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
											antecedentes tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n
											est�n asociados a �stos, como de los antecedentes comerciales de los deudores, tales como, nombres y
											apellidos, c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc�tera.
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
											Los honorarios y gastos por las gestiones de cobranza ascender�n a los porcentajes que seguidamente se
											indican, aplicados sobre el total de la deuda, o la cuota vencida seg�n el caso, conforme a la siguiente escala
											progresiva: Obligaciones hasta 10 unidades de fomento 9%; por la parte que exceda las 10 unidades de fomento
											y hasta 50 unidades de fomento, 6% y por la parte que exceda las 50 unidades de fomento, 3%. Los porcentajes
											indicados se aplicar�n como sigue: Cr�ditos de Consumo/Tarjetas de Cr�dito &#x2013; Persona Naturales: Despu�s de
											transcurridos 15 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n. Cr�ditos
											Comerciales &#x2013; General/Tarjetas De Cr�dito &#x2013; Personas Jur�dicas: Despu�s de transcurridos 5 d�as corridos de
											atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
											Las tarifas anteriores podr�n ser modificadas anualmente en caso de operaciones de consumo cuyo plazo de
											pago exceda de un a�o, siempre que tales cambios se avisen con una anticipaci�n m�nima de dos per�odos de
											pago. Formalizo (Formalizamos) el presente instrumento considerando que las tarifas indicadas se basan en la
											fiel interpretaci�n de la reglamentaci�n legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y
											adem�s normativa aplicable. Tanto los recargos en caso de mora o simple retardo como los gastos por
											concepto de la cobranza extrajudicial de los cr�ditos impagos, incluyendo honorarios y costas podr�n ser
											cobrados con cargo directo en alguna de la (s) cuenta(s) corriente(s) o cuenta(s) vistas(s) vigente(s)
											mantenida(s) por m� (nosotros) en el Banco, en la oportunidad que se cancele o regularice el vencimiento u
											obligaci�n morosa o impaga.
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
											N� OPERACI�N: __________________
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
										Resoluci�n / Recomendaci�n:
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
										V� B� Fecha
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
								TARIFARIO L�NEA DE CREDITO DE EMERGENCIA
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
									Datos B�sicos del Cliente
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
														Direcci�n particular
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
									Resumen L�nea de Cr�dito de Emergencia
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
														N� de Cuenta Corriente Relacionada
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
														Monto asignado de L�nea de Cr�dito de Emergencia
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
														Tarifa de Renovaci�n Semestral
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
														Observaci�n
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
								TARIFARIO L�NEA DE CREDITO DE EMERGENCIA
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
									Datos B�sicos del Cliente
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
														Direcci�n particular
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
									Resumen L�nea de Cr�dito de Emergencia
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
														N� de Cuenta Corriente Relacionada
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
														Monto asignado de L�nea de Cr�dito de Emergencia
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
														Tarifa de Renovaci�n Semestral
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
														Observaci�n
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
									(BANCA PERSONAS - PERSONAS NATURALES Y JUR�DICAS)
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
												En base a lo establecido en la Ley de Protecci�n de los Derechos de los Consumidores y en la normativa de la
												Comisi�n para el Mercado Financiero, se informa al suscrito que existen recargos por
												concepto de cobranza extrajudicial de cr�ditos o cuotas impagas, incluyendo honorarios a cargo del deudor
												seg�n los plazos y productos que se indican m�s adelante, los cuales ser�n cobrados por la empresa &#x201C;Servicios
												de Normalizaci�n y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuar� en nombre y en representaci�n e
												inter�s del Banco de Cr�dito e Inversiones en las gestiones de cobranza extrajudicial.
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
												Dicha cobranza extrajudicial que efectuar� la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A
												ser� realizada conforme a la Ley, en d�as h�biles y en horario de 8:00 a 20:00 horas.
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
												Declaro conocer y desde luego acepto, que seg�n lo establecido en la Ley N� 19.628 sobre Protecci�n de Datos
												de Car�cter Personal, para que la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A pueda
												realizar la cobranza extrajudicial, el Banco de Cr�dito e Inversiones suministrar� a dicha empresa antecedentes,
												tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n
												asociados a �stos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
												c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc.
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
												Declaro haber recibido, en forma previa al otorgamiento del cr�dito, la informaci�n sobre el c�lculo de honorarios
												que generan la cobranza extrajudicial de los cr�ditos impagos, as� como copia fiel de este formulario cuyo original
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
												Las tarifas de honorarios que se expresan a continuaci�n podr�n ser modificadas y en tal caso ser�n informadas
												a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
												legislaci�n vigente.
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
												Los honorarios por la cobranza extrajudicial para todos los productos ascender�n a los porcentajes aplicados
												sobre el total de la deuda o la cuota vencida, seg�n el caso, conforme a la siguiente escala progresiva:
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
												PLAZOS DE APLICACI�N DE HONORARIOS.-
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
																				Cr�ditos de Consumo, Cr�ditos Hipotecarios, Tarjetas de Cr�dito - Personas Naturales y Personas Jur�dicas: Despu�s de transcurridos 20 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
																			Cr�ditos Comerciales, despu�s de transcurridos 5 d�as corridos de atraso (mora) contados desde el d�a del vencimiento de la obligaci�n, salvo aquellos cr�ditos comerciales amparados por la ley 19.496 sobre Protecci�n a los derechos de los consumidores cuyo plazo ser� de 20 d�as.
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
									(BANCA PERSONAS - PERSONAS NATURALES Y JUR�DICAS)
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
												En base a lo establecido en la Ley de Protecci�n de los Derechos de los Consumidores y en la normativa de la
												Superintendencia de Bancos e Instituciones Financieras, se informa al suscrito que existen recargos por
												concepto de cobranza extrajudicial de cr�ditos o cuotas impagas, incluyendo honorarios a cargo del deudor
												seg�n los plazos y productos que se indican m�s adelante, los cuales ser�n cobrados por la empresa &#x201C;Servicios
												de Normalizaci�n y Cobranzas - Normaliza S.A.&#x201D; en su caso, la que actuar� en nombre y en representaci�n e
												inter�s del Banco de Cr�dito e Inversiones en las gestiones de cobranza extrajudicial.
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
												Dicha cobranza extrajudicial que efectuar� la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A
												ser� realizada conforme a la Ley, en d�as h�biles y en horario de 8:00 a 20:00 horas.
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
												Declaro conocer y desde luego acepto, que seg�n lo establecido en la Ley N� 19.628 sobre Protecci�n de Datos
												de Car�cter Personal, para que la empresa Servicios de Normalizaci�n y Cobranzas - Normaliza S.A pueda
												realizar la cobranza extrajudicial, el Banco de Cr�dito e Inversiones suministrar� a dicha empresa antecedentes,
												tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n
												asociados a �stos, como de los antecedentes comerciales de los deudores, tales como nombres y apellidos,
												c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc.

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
												Declaro haber recibido, en forma previa al otorgamiento del cr�dito, la informaci�n sobre el c�lculo de honorarios
												que generan la cobranza extrajudicial de los cr�ditos impagos, as� como copia fiel de este formulario cuyo original
												suscribo.
											 </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row >
									<fo:table-cell > 
										<fo:block line-height="11pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											 <fo:inline font-size="11pt"> 
												Las tarifas de honorarios que se expresan a continuaci�n podr�n ser modificadas y en tal caso ser�n informadas
												a los clientes por carta al domicilio registrado en el Banco, contemplando las condiciones previstas en la
												legislaci�n vigente.
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
												Los honorarios por la cobranza extrajudicial para todos los productos ascender�n a los porcentajes aplicados
												sobre el total de la deuda o la cuota vencida, seg�n el caso, conforme a la siguiente escala progresiva:
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
												PLAZOS DE APLICACI�N DE HONORARIOS.-
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
																				Cr�ditos de Consumo, Cr�ditos Hipotecarios, Tarjetas de Cr�dito - Personas Naturales y Personas Jur�dicas: Despu�s de transcurridos 20 d�as corridos de atraso (mora) desde el d�a del vencimiento de la obligaci�n.
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
																			Cr�ditos Comerciales, despu�s de transcurridos 5 d�as corridos de atraso (mora) contados desde el d�a del vencimiento de la obligaci�n, salvo aquellos cr�ditos comerciales amparados por la ley 19.496 sobre Protecci�n a los derechos de los consumidores cuyo plazo ser� de 20 d�as.
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
															Cr�dito/Operaci�n
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
<!-- INICIO PROPUESTA SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE) COPIA CLIENTE -->
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
												PROPUESTA SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN CUENTA 
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												&#0160;Folio N�
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
												&#0160;Tel�fono:
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
												&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;El asegurado faculta expresamente a la compa��a, para que le env�e copia de la p�liza y de los dem�s
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
												documentos que forman parte integrante de la misma, a la direcci�n de correo electr�nico individualizada por
												el asegurado en este instrumento, con lo cual el suscrito se entender� por recibido, comunicado y/o notificado
												de la informaci�n pertinente como si fuera en soporte papel. En todo caso el asegurado podr� siempre
												solicitar una copia del mismo en el domicilio de la Compa��a, debiendo la �ltima hacer entrega de ella en el
												plazo m�ximo de cinco d�as.
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
												&#0160;Vigencia Operaci�n: Desde
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
												La prima y/o tasa puede variar en funci�n a la evaluaci�n del riesgo por parte de Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm" margin-top="0.1cm"  margin-right="0.1cm" space-before="0.1cm">
											<fo:inline start-indent="2pt">
												El seguro ofrecido es intermediado por Bci Corredores de Seguros S.A., RUT 78.951.950-1 y la compa��a que
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
												Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se
												procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que esta propuesta sea
												aceptada por el asegurador y se inicie la vigencia de la p�liza. (Circular N� 2.126 S.V.S.).
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" space-after="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												Todas las menciones de esta propuesta formar�n parte integrante de las Condiciones Particulares de la p�liza.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Por el presente instrumento, solicito la contrataci�n de los productos individualizados a continuaci�n:
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
												&#0160;N� Operaci�n
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
												Por el presente instrumento, solicito como asegurable la contrataci�n del (os) seguro(s)
												respectivo(s) de Bci Seguros de Vida S.A. seg�n producto(s) identificado(s) precedentemente. Con este
												objeto otorgo mandato al Banco de Cr�dito e Inversiones, en adelante "el Mandatario", para que contrate y/o
												renueve con BCI Seguros Vida S.A., uno o m�s Seguros para el asegurable, intermediados por Bci Corredores
												de Seguros S.A. Desde ya, acepto como asegurable todas las condiciones de la contrataci�n del o de los
												seguro(s), entre �stas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de
												cualesquiera otros gastos generados con ocasi�n del o de los mismos, en cualquiera de mis Cuentas
												Corrientes, o la rebaja correspondiente del o de los cr�ditos que se me concediere(n), de la(s) prima(s),
												impuestos, comisiones y otros gastos derivados de su contrataci�n y renovaci�n en su caso, en las
												oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. As� tambi�n, acepto las
												condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compa��a de
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
												Que esta solicitud de incorporaci�n, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.
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
												La presente Solicitud de Incorporaci�n a estos seguros se hace a petici�n del suscrito y en ning�n caso ha
												sido considerada como condici�n para el otorgamiento del (de los) cr�dito(s) ofrecido(s) o solicitado(s); y
												adem�s declaro estar en pleno conocimiento de toda la informaci�n contenida en la presente Solicitud.
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
												Del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y de la
												compa��a aseguradora.
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
													Estar dispuesto a someterme a pruebas m�dicas por cuenta de la Compa��a, asimismo autorizo a los
													m�dicos, hospital, cl�nica u otra instituci�n o persona que tenga mis registros personales para que
													entregue o proporcione la informaci�n solicitada por BCI Seguros Vida S.A. A su vez faculto a esta �ltima
													para que solicite o retire copia de tales antecedentes patol�gicos, incluso en caso de muerte, conforme a lo
													dispuesto en la ley n�mero 19.628, art�culo 127 del C�digo Sanitario.
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
												AUTORIZACI�N:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Autorizo al Banco para remitir a Bci Seguros Vida S.A. y/o Bci Corredores de Seguros S.A.
												la informaci�n pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas,
												montos o saldos insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo
												solicitaren dichas compa��as.
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
												Seguro desgravamen L�nea de Sobregiro en Cuenta Corriente (POL 2
												2013 0331), comisi�n de intermediaci�n 25%. Seguro desgravamen L�nea de Cr�dito de Emergencia (POL 2
												2013 0331), comisi�n de intermediaci�n 30%. Comisi�n de recaudaci�n (receptor banco BCI): UF 0,03 + IVA
												por recaudaci�n. Valija documentos (receptor banco BCI): $ 400 + IVA por seguro.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
	<!--salto de pagina-->			
<!-- FIN tabla asegurable -->
<!-- PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN -->
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
												PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												Compa��a Aseguradora:
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
												Monto utilizado de la L�nea de Sobregiro en Cuenta Corriente o de la L�nea de Cr�dito 
												de Emergencia o ambas con un tope m�ximo, correspondiente al cupo autorizado por el Banco de Cr�dito
												e Inversiones; al d�a inmediatamente anterior a la fecha de fallecimiento del deudor, m�s los intereses
												devengados al cierre del mes anterior a la fecha de fallecimiento, sobre la base de un servicio regular de la
												deuda, con un tope m�ximo, correspondiente al cupo autorizado por el Banco de Cr�dito e Inversiones.
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
												Banco de Cr�dito e Inversiones
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Edad l�mite de ingreso y permanencia:
											</fo:inline>
											<fo:inline start-indent="2pt">
												La edad del asegurado al momento de su ingreso, sumado al
												plazo de la deuda, no deben exceder los 75 a�os 0 d�as.
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
												Las exclusiones del seguro se encuentran contenidas en la p�liza depositada en el registro
												de la S.V.S. bajo el c�digo POL 2 2013 0331, las cuales consisten en las siguientes: a) Automutilaci�n, o
												autolesi�n, b) Pena de muerte o por participaci�n del Asegurado en cualquier acto delictivo, c) Por quien
												pudiere verse beneficiado por el pago de la cantidad asegurada, mediante su participaci�n como autor o
												c�mplice en un acto que sea calificado por la ley como delito, d) La participaci�n activa del Asegurado en
												guerra internacional, sea que Chile tenga o no intervenci�n en ella; en guerra civil, dentro o fuera de Chile;
												o en mot�n o conmoci�n contra el orden p�blico dentro o fuera del pa�s; o hechos que las leyes califican
												como delitos contra la seguridad interior del Estado, e) La participaci�n activa del Asegurado en acto
												terrorista, f) La participaci�n del Asegurado en actos temerarios o en cualquier maniobra, experimento,
												exhibici�n, desaf�o o actividad notoriamente peligrosa, entendiendo por tales aquellas en las cuales se pone
												en grave peligro la vida e integridad f�sica de las personas, g) La realizaci�n o participaci�n en una actividad
												o deporte riesgoso, consider�ndose como tales aquellos que objetivamente constituyan una flagrante
												agravaci�n del riesgo o se requiera de medidas de protecci�n o seguridad para realizarlos. A v�a de
												ejemplo y sin que la enumeraci�n sea taxativa o restrictiva sino que meramente enunciativa, se considera
												actividad o deporte riesgoso el manejo de explosivos, miner�a subterr�nea, trabajos en altura o l�neas de
												alta tensi�n, inmersi�n submarina, piloto civil, paracaidismo, monta�ismo, alas delta, bungee, parapente,
												carreras de auto y moto, entre otros, h) Situaciones o Enfermedades preexistentes, entendi�ndose por tales
												las definidas en el art�culo 2� de estas Condiciones Generales. Para los efectos de la aplicaci�n de esta
												exclusi�n, al momento de la contrataci�n la Compa��a Aseguradora deber� consultar al Asegurable acerca
												de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitaci�n o
												exclusi�n de cobertura, i) Fisi�n o fusi�n nuclear o contaminaci�n radioactiva, j) Una infecci�n oportun�stica,
												o un neoplasma maligno, si al momento de la muerte o enfermedad el asegurado sufr�a del S�ndrome de
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
												En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deber� comunicar con Bci
												Corredores de Seguros al tel�fono (02) 25404953 o al e-mail: siniestrosbci@bci.cl., al tel�fono del CRI de
												la Compa��a de Seguros 6006000292 - desde celular 02 - 26799700 o en cualquiera de las oficinas de
												Bci Seguros.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												DECLARACI�N DE RECEPCI�N DE DOCUMENTOS Y ENTREGA DE INFORMACI�N
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												El Suscriptor abajo firmante declara recibir en este acto por parte del Banco de Cr�dito e Inversiones el
												documento "Informativo sobre Seguro de Desgravamen para Deudores L�nea de Sobregiro en Cuenta
												Corriente y L�nea de Cr�dito de Emergencia".
												Asimismo, declara haber recibido del Banco de Cr�dito e Inversiones toda la informaci�n, en forma
												oportuna y completa, acerca de las primas, coberturas y dem�s condiciones generales sobre el seguro de
												Desgravamen, como asimismo respecto de otros gastos asociados al seguro (comisiones), todos los cuales
												ser�n de cargo del suscrito.
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
												BCI SEGUROS VIDA S.A bajo la condici�n de veracidad de la declaraci�n de salud y dem�s declaraciones formuladas
												en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de
												acuerdo a las condiciones generales de la p�liza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta
												cobertura provisoria ser� el menor valor entre UF 1.000 y el monto indicado en la propuesta para dicho riesgo.
												La cobertura otorgada por el presente certificado tendr� vigencia a contar de la fecha en que se reciba en oficinas de la
												compa��a la prima del seguro propuesto y hasta la fecha de aceptaci�n o rechazo definitivo del riesgo por parte de la
												compa��a, lo que no podr� exceder de 30 d�as corridos. Para estos, no se entender� percibida la prima por el solo
												hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compa��a comunicar� por escrito al
												asegurado, devolviendo la prima en dep�sito recibida.
												Es condici�n esencial que toda informaci�n entregada por el cliente sea fidedigna, entendi�ndose que toda declaraci�n
												falsa err�nea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaraci�n personal de
												Salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.
												Este certificado no tendr� validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra
												propuesta de seguro de esta compa��a.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#E0E0E0">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												INFORMACION ARTICULOS 57 Y 58 DEL DL N� 251
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid" 
												border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												La informaci�n sobre la diversificaci�n de esta corredora, de las entidades aseguradoras con que haya
												trabajado y de las p�lizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a
												su disposici�n en http://www.bci.cl/personas/seguros/diversificacion_de_cartera.html.
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
<!--FIN PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN -->
	<!--salto de pagina--><fo:block text-align="left" break-after="page"></fo:block>
<!--DECLARACI�N PERSONAL DE SALUD -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.9cm"/>
						<fo:table-column column-width="3.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline font-weight="bold">
												CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												DECLARACI�N PERSONAL DE SALUD
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
												&#0160;Tel�fono
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
												�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes situaciones de salud o
												enfermedades: diabetes, enfermedades al ri��n, enfermedades a los huesos o m�sculos como hernias a la columna,
												artrosis, discopat�as, lumbago, lumboci�tica, o cualquier otra enfermedad de los componentes del sistema osteomuscular,
												enfermedades cardiacas, bypass, hipertensi�n arterial, infarto del miocardio, enfermedades
												coronarias, angina de pecho, enfermedades reum�ticas, soplo al coraz�n, arritmias, accidentes cerebrovasculares,
												aneurismas, varices, flebitis, �lceras varicosas o cualquier otra enfermedad al coraz�n, arterias, venas o sistema
												circulatorio, enfermedades al sistema respiratorio, c�ncer, hepatitis (excepto tipo A), enfermedades gastrointestinales,
												como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa, enfermedades hematol�gicas como leucemia, linfoma o anemia,
												desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurol�gicas, como epilepsia, enfermedad de
												Alzheimer, alcoholismo o drogadicci�n, sobrepeso u obesidad con o sin cirug�a?.
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
												&#0160;Fecha del Diagn�stico
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
												&#0160;M�dico Tratante
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
												�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta
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
													M�dico Tratante y especialidad :________________________________________________________
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													�A la fecha de la presente declaraci�n se ha practicado ex�menes m�dicos recientes cuyos resultados 
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
												&#0160;est�n pendientes o usted no conozca?.
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
												&#0160;Fecha de realizaci�n: _____________________________________________
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
												&#0160;�Ha estado bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?.
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
												&#0160;M�dico Tratante
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
												&#0160;�Ingiere o le ha sido prescrito la ingesta de alg�n tipo de medicamento en forma habitual?.
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
												&#0160;Usted ha sido dictaminado o se le ha otorgado alg�n grado de Invalidez por alguna Comisi�n M�dica
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
												&#0160;�Se encuentra tramitando una Invalidez por accidente o por enfermedad, en alguna de las Comisiones antes
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
												&#0160;En caso afirmativo indicar causal y comisi�n en la que present� los antecedentes:__________________
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
												Compa��a aseguradora informaci�n determinante del riesgo que se le propone asegurar y en consecuencia,
												si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendr� derecho para
												rescindir el contrato, de acuerdo a lo dispuesto en el art�culo 525 del C�digo de Comercio.
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
												Declaro estar dispuesto a someterme voluntariamente a ex�menes y pruebas m�dicas, si la Compa��a as� lo
												requiere, con ocasi�n de la evaluaci�n y/o suscripci�n del riesgo por su parte, y asimismo, para el caso de
												siniestro. Adicionalmente, autorizo expresamente a cualquier m�dico, profesional de la salud, instituci�n de
												salud p�blica o privada, tribunales de justicia, jueces �rbitros y a cualquier otra persona natural o jur�dica,
												p�blica o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente
												con datos, informaci�n o antecedentes relativos a mi estado de salud f�sica y ps�quica; tales como fichas
												cl�nicas, antecedentes cl�nicos, informes m�dicos y an�lisis o ex�menes de laboratorio cl�nicos, para entregar
												dichos datos, informaci�n o antecedentes a la Compa��a, cuando esta lo solicite, para lo cual otorgo mi
												expreso consentimiento conforme lo dispone la Ley N�19.628 y el art�culo 127 del C�digo Sanitario. Adem�s
												autorizo a la Compa��a a realizar el tratamiento de la informaci�n antes se�alada, todo ello conforme lo
												dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo la etapa de evaluaci�n y durante el procedimiento de liquidaci�n de cualquier siniestro, autorizaciones que no se extinguir�n en caso de muerte, conforme lo establece el art�culo 2169 del C�digo Civil. Por otra parte la Compa��a se obliga a guardar absoluta reserva y confidencialidad respecto de la informaci�n recibida.
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
<!--FIN DECLARACI�N PERSONAL DE SALUD -->		
		<!--salto de pagina-->			
<!--DECLARACI�N DE DEPORTES Y ACTIVIDADES -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												DECLARACI�N DE DEPORTES Y ACTIVIDADES
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
												&#0160;Tel�fono
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
												�Practica Ud. alguna de las actividades o deportes indicados a continuaci�n aunque lo haga en forma ocasional y/o
												espor�dica: inmersiones subacu�ticas, alas delta, parapente, paracaidismo, bungee, monta�ismo, boxeo, carreras de auto,
												moto, embarcaciones acu�ticas, bicicleta, ski de nieve; esqu� en helic�ptero, manta ray, polo, kite surf, carreras de caballo,
												rodeo, bombero, piloto o pasajero de aviaci�n civil, pasajero en aviaci�n comercial en vuelos no regulares o de itinerario no
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
												�Hace uso de motocicletas?.
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
												&#0160;DECLARACI�N DE &#0160;OCUPACI�N
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;Profesi�n o Actividad
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
												&#0160;Lugar donde desempe�a su actividad
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
												�En raz�n de su profesi�n o actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o
												a gran altura, manejar sustancias: corrosivas, t�xicas, �cidos, pesticidas, petr�leos; entrar en contacto con sustancias
												radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos
												con elementos de mediana o alta tensi�n, manejar maquinaria o implementos de corte en general, portar armas, realizar
												labores de guardia y/o vigilancia, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas
												importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o
												helic�pteros privados o en vuelos no regulares o de itinerario no establecido?.
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
												ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compa��a aseguradora
												informaci�n determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable
												error, reticencia o inexactitud, el asegurador tendr� derecho para rescindir el contrato, de acuerdo a lo dispuesto en el
												art�culo 525 del C�digo de Comercio.
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
												Declaro estar dispuesto a someterme voluntariamente a ex�menes y pruebas m�dicas, si la Compa��a as� lo requiere, con
												ocasi�n de la evaluaci�n y/o suscripci�n del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente,
												autorizo expresamente a cualquier m�dico, profesional de la salud, instituci�n de salud p�blica o privada, tribunales de
												justicia, jueces �rbitros y a cualquier otra persona natural o jur�dica, p�blica o privada, incluidas las Superintendencias de la
												Salud, de Isapres y de Valores y Seguros, que cuente con datos, informaci�n o antecedentes relativos a mi estado de salud
												f�sica y ps�quica; tales como fichas cl�nicas, antecedentes cl�nicos, informes m�dicos y an�lisis o ex�menes de laboratorio
												cl�nicos, para entregar dichos datos, informaci�n o antecedentes a la Compa��a, cuando esta lo solicite, para lo cual otorgo
												mi expreso consentimiento conforme lo dispone la Ley N�19.628 y el art�culo 127 del C�digo Sanitario. Adem�s autorizo a
												la Compa��a a realizar el tratamiento de la informaci�n antes se�alada, todo ello conforme lo dispone la Ley 19.628. El
												consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo
												la etapa de evaluaci�n y durante el procedimiento de liquidaci�n de cualquier siniestro, autorizaciones que no se extinguir�n
												en caso de muerte, conforme lo establece el art�culo 2169 del C�digo Civil. Por otra parte la Compa��a se obliga a guardar
												absoluta reserva y confidencialidad respecto de la informaci�n recibida.
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
<!-- FIN PROPUESTA SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE) COPIA CLIENTE -->
<!-- INICIO PROPUESTA SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE) COPIA CORREDORA -->
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
												PROPUESTA SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN CUENTA 
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												&#0160;Folio N�
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
												&#0160;Tel�fono:
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
												&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;El asegurado faculta expresamente a la compa��a, para que le env�e copia de la p�liza y de los dem�s
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
												documentos que forman parte integrante de la misma, a la direcci�n de correo electr�nico individualizada por
												el asegurado en este instrumento, con lo cual el suscrito se entender� por recibido, comunicado y/o notificado
												de la informaci�n pertinente como si fuera en soporte papel. En todo caso el asegurado podr� siempre
												solicitar una copia del mismo en el domicilio de la Compa��a, debiendo la �ltima hacer entrega de ella en el
												plazo m�ximo de cinco d�as.
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
												&#0160;Vigencia Operaci�n: Desde
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
												La prima y/o tasa puede variar en funci�n a la evaluaci�n del riesgo por parte de Bci Seguros Vida S.A.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.1cm" margin-top="0.1cm"  margin-right="0.1cm" space-before="0.1cm">
											<fo:inline start-indent="2pt">
												El seguro ofrecido es intermediado por Bci Corredores de Seguros S.A., RUT 78.951.950-1 y la compa��a que
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
												Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se
												procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que esta propuesta sea
												aceptada por el asegurador y se inicie la vigencia de la p�liza. (Circular N� 2.126 S.V.S.).
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" space-after="0.1cm" margin-left="0.1cm"  margin-right="0.1cm">
											<fo:inline start-indent="2pt">
												Todas las menciones de esta propuesta formar�n parte integrante de las Condiciones Particulares de la p�liza.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-color="black" border-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												Por el presente instrumento, solicito la contrataci�n de los productos individualizados a continuaci�n:
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
												&#0160;N� Operaci�n
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
												Por el presente instrumento, solicito como asegurable la contrataci�n del (os) seguro(s)
												respectivo(s) de Bci Seguros de Vida S.A. seg�n producto(s) identificado(s) precedentemente. Con este
												objeto otorgo mandato al Banco de Cr�dito e Inversiones, en adelante "el Mandatario", para que contrate y/o
												renueve con BCI Seguros Vida S.A., uno o m�s Seguros para el asegurable, intermediados por Bci Corredores
												de Seguros S.A. Desde ya, acepto como asegurable todas las condiciones de la contrataci�n del o de los
												seguro(s), entre �stas, su vigencia, la cobertura del o de los mismos y el cargo de la(s) prima(s) y de
												cualesquiera otros gastos generados con ocasi�n del o de los mismos, en cualquiera de mis Cuentas
												Corrientes, o la rebaja correspondiente del o de los cr�ditos que se me concediere(n), de la(s) prima(s),
												impuestos, comisiones y otros gastos derivados de su contrataci�n y renovaci�n en su caso, en las
												oportunidades y con la frecuencia que corresponde a los respectivos vencimientos. As� tambi�n, acepto las
												condiciones de procedencia o improcedencia del pago del o de los seguros pactados en la Compa��a de
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
												Que esta solicitud de incorporaci�n, no otorga cobertura hasta haber sido aceptada por Bci Seguros Vida S.A.
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
												La presente Solicitud de Incorporaci�n a estos seguros se hace a petici�n del suscrito y en ning�n caso ha
												sido considerada como condici�n para el otorgamiento del (de los) cr�dito(s) ofrecido(s) o solicitado(s); y
												adem�s declaro estar en pleno conocimiento de toda la informaci�n contenida en la presente Solicitud.
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
												Del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y de la
												compa��a aseguradora.
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
													Estar dispuesto a someterme a pruebas m�dicas por cuenta de la Compa��a, asimismo autorizo a los
													m�dicos, hospital, cl�nica u otra instituci�n o persona que tenga mis registros personales para que
													entregue o proporcione la informaci�n solicitada por BCI Seguros Vida S.A. A su vez faculto a esta �ltima
													para que solicite o retire copia de tales antecedentes patol�gicos, incluso en caso de muerte, conforme a lo
													dispuesto en la ley n�mero 19.628, art�culo 127 del C�digo Sanitario.
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
												AUTORIZACI�N:
											</fo:inline>
											<fo:inline start-indent="2pt">
												Autorizo al Banco para remitir a Bci Seguros Vida S.A. y/o Bci Corredores de Seguros S.A.
												la informaci�n pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas,
												montos o saldos insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo
												solicitaren dichas compa��as.
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
												Seguro desgravamen L�nea de Sobregiro en Cuenta Corriente (POL 2
												2013 0331), comisi�n de intermediaci�n 25%. Seguro desgravamen L�nea de Cr�dito de Emergencia (POL 2
												2013 0331), comisi�n de intermediaci�n 30%. Comisi�n de recaudaci�n (receptor banco BCI): UF 0,03 + IVA
												por recaudaci�n. Valija documentos (receptor banco BCI): $ 400 + IVA por seguro.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
				</fo:table>
	<!--salto de pagina-->			
<!-- FIN tabla asegurable -->
<!-- PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN -->
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
												PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												Compa��a Aseguradora:
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
												Monto utilizado de la L�nea de Sobregiro en Cuenta Corriente o de la L�nea de Cr�dito 
												de Emergencia o ambas con un tope m�ximo, correspondiente al cupo autorizado por el Banco de Cr�dito
												e Inversiones; al d�a inmediatamente anterior a la fecha de fallecimiento del deudor, m�s los intereses
												devengados al cierre del mes anterior a la fecha de fallecimiento, sobre la base de un servicio regular de la
												deuda, con un tope m�ximo, correspondiente al cupo autorizado por el Banco de Cr�dito e Inversiones.
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
												Banco de Cr�dito e Inversiones
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt" text-align="justify" margin-left="0.2cm" margin-right="0.2cm">
											<fo:inline start-indent="2pt"  font-weight="bold">
												Edad l�mite de ingreso y permanencia:
											</fo:inline>
											<fo:inline start-indent="2pt">
												La edad del asegurado al momento de su ingreso, sumado al
												plazo de la deuda, no deben exceder los 75 a�os 0 d�as.
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
												Las exclusiones del seguro se encuentran contenidas en la p�liza depositada en el registro
												de la S.V.S. bajo el c�digo POL 2 2013 0331, las cuales consisten en las siguientes: a) Automutilaci�n, o
												autolesi�n, b) Pena de muerte o por participaci�n del Asegurado en cualquier acto delictivo, c) Por quien
												pudiere verse beneficiado por el pago de la cantidad asegurada, mediante su participaci�n como autor o
												c�mplice en un acto que sea calificado por la ley como delito, d) La participaci�n activa del Asegurado en
												guerra internacional, sea que Chile tenga o no intervenci�n en ella; en guerra civil, dentro o fuera de Chile;
												o en mot�n o conmoci�n contra el orden p�blico dentro o fuera del pa�s; o hechos que las leyes califican
												como delitos contra la seguridad interior del Estado, e) La participaci�n activa del Asegurado en acto
												terrorista, f) La participaci�n del Asegurado en actos temerarios o en cualquier maniobra, experimento,
												exhibici�n, desaf�o o actividad notoriamente peligrosa, entendiendo por tales aquellas en las cuales se pone
												en grave peligro la vida e integridad f�sica de las personas, g) La realizaci�n o participaci�n en una actividad
												o deporte riesgoso, consider�ndose como tales aquellos que objetivamente constituyan una flagrante
												agravaci�n del riesgo o se requiera de medidas de protecci�n o seguridad para realizarlos. A v�a de
												ejemplo y sin que la enumeraci�n sea taxativa o restrictiva sino que meramente enunciativa, se considera
												actividad o deporte riesgoso el manejo de explosivos, miner�a subterr�nea, trabajos en altura o l�neas de
												alta tensi�n, inmersi�n submarina, piloto civil, paracaidismo, monta�ismo, alas delta, bungee, parapente,
												carreras de auto y moto, entre otros, h) Situaciones o Enfermedades preexistentes, entendi�ndose por tales
												las definidas en el art�culo 2� de estas Condiciones Generales. Para los efectos de la aplicaci�n de esta
												exclusi�n, al momento de la contrataci�n la Compa��a Aseguradora deber� consultar al Asegurable acerca
												de todas aquellas situaciones o enfermedades preexistentes que pueden importar una limitaci�n o
												exclusi�n de cobertura, i) Fisi�n o fusi�n nuclear o contaminaci�n radioactiva, j) Una infecci�n oportun�stica,
												o un neoplasma maligno, si al momento de la muerte o enfermedad el asegurado sufr�a del S�ndrome de
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
												En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deber� comunicar con Bci
												Corredores de Seguros al tel�fono (02) 25404953 o al e-mail: siniestrosbci@bci.cl., al tel�fono del CRI de
												la Compa��a de Seguros 6006000292 - desde celular 02 - 26799700 o en cualquiera de las oficinas de
												Bci Seguros.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#BFBFBF">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												DECLARACI�N DE RECEPCI�N DE DOCUMENTOS Y ENTREGA DE INFORMACI�N
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												El Suscriptor abajo firmante declara recibir en este acto por parte del Banco de Cr�dito e Inversiones el
												documento "Informativo sobre Seguro de Desgravamen para Deudores L�nea de Sobregiro en Cuenta
												Corriente y L�nea de Cr�dito de Emergencia".
												Asimismo, declara haber recibido del Banco de Cr�dito e Inversiones toda la informaci�n, en forma
												oportuna y completa, acerca de las primas, coberturas y dem�s condiciones generales sobre el seguro de
												Desgravamen, como asimismo respecto de otros gastos asociados al seguro (comisiones), todos los cuales
												ser�n de cargo del suscrito.
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
												BCI SEGUROS VIDA S.A bajo la condici�n de veracidad de la declaraci�n de salud y dem�s declaraciones formuladas
												en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de
												acuerdo a las condiciones generales de la p�liza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta
												cobertura provisoria ser� el menor valor entre UF 1.000 y el monto indicado en la propuesta para dicho riesgo.
												La cobertura otorgada por el presente certificado tendr� vigencia a contar de la fecha en que se reciba en oficinas de la
												compa��a la prima del seguro propuesto y hasta la fecha de aceptaci�n o rechazo definitivo del riesgo por parte de la
												compa��a, lo que no podr� exceder de 30 d�as corridos. Para estos, no se entender� percibida la prima por el solo
												hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compa��a comunicar� por escrito al
												asegurado, devolviendo la prima en dep�sito recibida.
												Es condici�n esencial que toda informaci�n entregada por el cliente sea fidedigna, entendi�ndose que toda declaraci�n
												falsa err�nea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaraci�n personal de
												Salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.
												Este certificado no tendr� validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra
												propuesta de seguro de esta compa��a.
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-color="black" border-style="solid"  background-color="#E0E0E0">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm" font-weight="bold" space-before="0.1cm">
											<fo:inline start-indent="2pt" font-weight="bold">
												INFORMACION ARTICULOS 57 Y 58 DEL DL N� 251
											</fo:inline>
										</fo:block>
									</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid" 
												border-bottom-color="black" border-bottom-style="solid">
										<fo:block font-size="11pt"  text-align="justify" margin-left="0.2cm"  margin-right="0.2cm">
											<fo:inline start-indent="2pt">
												La informaci�n sobre la diversificaci�n de esta corredora, de las entidades aseguradoras con que haya
												trabajado y de las p�lizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a
												su disposici�n en http://www.bci.cl/personas/seguros/diversificacion_de_cartera.html.
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
<!--FIN PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN -->
	<!--salto de pagina--><fo:block text-align="left" break-after="page"></fo:block>
<!--DECLARACI�N PERSONAL DE SALUD -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.9cm"/>
						<fo:table-column column-width="3.8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="1pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline font-weight="bold">
												CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												DECLARACI�N PERSONAL DE SALUD
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
												&#0160;Tel�fono
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
												�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes situaciones de salud o
												enfermedades: diabetes, enfermedades al ri��n, enfermedades a los huesos o m�sculos como hernias a la columna,
												artrosis, discopat�as, lumbago, lumboci�tica, o cualquier otra enfermedad de los componentes del sistema osteomuscular,
												enfermedades cardiacas, bypass, hipertensi�n arterial, infarto del miocardio, enfermedades
												coronarias, angina de pecho, enfermedades reum�ticas, soplo al coraz�n, arritmias, accidentes cerebrovasculares,
												aneurismas, varices, flebitis, �lceras varicosas o cualquier otra enfermedad al coraz�n, arterias, venas o sistema
												circulatorio, enfermedades al sistema respiratorio, c�ncer, hepatitis (excepto tipo A), enfermedades gastrointestinales,
												como cirrosis hep�tica, �lcera g�strica, colitis ulcerosa, enfermedades hematol�gicas como leucemia, linfoma o anemia,
												desordenes nerviosos o mentales, sida, HIV positivo, enfermedades neurol�gicas, como epilepsia, enfermedad de
												Alzheimer, alcoholismo o drogadicci�n, sobrepeso u obesidad con o sin cirug�a?.
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
												&#0160;Fecha del Diagn�stico
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
												&#0160;M�dico Tratante
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
												�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta
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
													M�dico Tratante y especialidad :________________________________________________________
												</fo:inline>
											</fo:block>
										</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell border-left-color="black" border-left-style="solid" border-right-color="black" border-right-style="solid">
											<fo:block font-size="11pt"  text-align="left" margin-left="0.1cm"  margin-right="0.1cm">
												<fo:inline start-indent="1pt">
													�A la fecha de la presente declaraci�n se ha practicado ex�menes m�dicos recientes cuyos resultados 
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
												&#0160;est�n pendientes o usted no conozca?.
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
												&#0160;Fecha de realizaci�n: _____________________________________________
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
												&#0160;�Ha estado bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?.
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
												&#0160;M�dico Tratante
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
												&#0160;�Ingiere o le ha sido prescrito la ingesta de alg�n tipo de medicamento en forma habitual?.
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
												&#0160;Usted ha sido dictaminado o se le ha otorgado alg�n grado de Invalidez por alguna Comisi�n M�dica
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
												&#0160;�Se encuentra tramitando una Invalidez por accidente o por enfermedad, en alguna de las Comisiones antes
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
												&#0160;En caso afirmativo indicar causal y comisi�n en la que present� los antecedentes:__________________
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
												Compa��a aseguradora informaci�n determinante del riesgo que se le propone asegurar y en consecuencia,
												si hubiere incurrido en un inexcusable error, reticencia o inexactitud, el asegurador tendr� derecho para
												rescindir el contrato, de acuerdo a lo dispuesto en el art�culo 525 del C�digo de Comercio.
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
												Declaro estar dispuesto a someterme voluntariamente a ex�menes y pruebas m�dicas, si la Compa��a as� lo
												requiere, con ocasi�n de la evaluaci�n y/o suscripci�n del riesgo por su parte, y asimismo, para el caso de
												siniestro. Adicionalmente, autorizo expresamente a cualquier m�dico, profesional de la salud, instituci�n de
												salud p�blica o privada, tribunales de justicia, jueces �rbitros y a cualquier otra persona natural o jur�dica,
												p�blica o privada, incluidas las Superintendencias de la Salud, de Isapres y de Valores y Seguros, que cuente
												con datos, informaci�n o antecedentes relativos a mi estado de salud f�sica y ps�quica; tales como fichas
												cl�nicas, antecedentes cl�nicos, informes m�dicos y an�lisis o ex�menes de laboratorio cl�nicos, para entregar
												dichos datos, informaci�n o antecedentes a la Compa��a, cuando esta lo solicite, para lo cual otorgo mi
												expreso consentimiento conforme lo dispone la Ley N�19.628 y el art�culo 127 del C�digo Sanitario. Adem�s
												autorizo a la Compa��a a realizar el tratamiento de la informaci�n antes se�alada, todo ello conforme lo
												dispone la Ley 19.628. El consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo la etapa de evaluaci�n y durante el procedimiento de liquidaci�n de cualquier siniestro, autorizaciones que no se extinguir�n en caso de muerte, conforme lo establece el art�culo 2169 del C�digo Civil. Por otra parte la Compa��a se obliga a guardar absoluta reserva y confidencialidad respecto de la informaci�n recibida.
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
<!--FIN DECLARACI�N PERSONAL DE SALUD -->		
		<!--salto de pagina-->			
<!--DECLARACI�N DE DEPORTES Y ACTIVIDADES -->
<!--titulo-->
				<fo:table text-align="center" table-layout="fixed">
						<fo:table-column column-width="15.7cm"/>
						<fo:table-column column-width="4cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												PROPUESTA DE SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN
											</fo:inline>
										</fo:block>
										<fo:block font-size="11pt"  text-align="center">
											<fo:inline start-indent="2pt" font-weight="bold">
												CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE)
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
												DECLARACI�N DE DEPORTES Y ACTIVIDADES
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
												&#0160;Tel�fono
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
												�Practica Ud. alguna de las actividades o deportes indicados a continuaci�n aunque lo haga en forma ocasional y/o
												espor�dica: inmersiones subacu�ticas, alas delta, parapente, paracaidismo, bungee, monta�ismo, boxeo, carreras de auto,
												moto, embarcaciones acu�ticas, bicicleta, ski de nieve; esqu� en helic�ptero, manta ray, polo, kite surf, carreras de caballo,
												rodeo, bombero, piloto o pasajero de aviaci�n civil, pasajero en aviaci�n comercial en vuelos no regulares o de itinerario no
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
												�Hace uso de motocicletas?.
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
												&#0160;DECLARACI�N DE &#0160;OCUPACI�N
											</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-right-color="black" border-right-style="solid" border-bottom-color="black" border-bottom-style="solid"
													border-top-color="black" border-top-style="solid">
										<fo:block font-size="11pt"  text-align="left"  padding-top="2pt" padding-left="10pt">
												&#0160;Profesi�n o Actividad
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
												&#0160;Lugar donde desempe�a su actividad
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
												�En raz�n de su profesi�n o actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o
												a gran altura, manejar sustancias: corrosivas, t�xicas, �cidos, pesticidas, petr�leos; entrar en contacto con sustancias
												radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos
												con elementos de mediana o alta tensi�n, manejar maquinaria o implementos de corte en general, portar armas, realizar
												labores de guardia y/o vigilancia, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas
												importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero) aviones o
												helic�pteros privados o en vuelos no regulares o de itinerario no establecido?.
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
												ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen para la Compa��a aseguradora
												informaci�n determinante del riesgo que se le propone asegurar y en consecuencia, si hubiere incurrido en un inexcusable
												error, reticencia o inexactitud, el asegurador tendr� derecho para rescindir el contrato, de acuerdo a lo dispuesto en el
												art�culo 525 del C�digo de Comercio.
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
												Declaro estar dispuesto a someterme voluntariamente a ex�menes y pruebas m�dicas, si la Compa��a as� lo requiere, con
												ocasi�n de la evaluaci�n y/o suscripci�n del riesgo por su parte, y asimismo, para el caso de siniestro. Adicionalmente,
												autorizo expresamente a cualquier m�dico, profesional de la salud, instituci�n de salud p�blica o privada, tribunales de
												justicia, jueces �rbitros y a cualquier otra persona natural o jur�dica, p�blica o privada, incluidas las Superintendencias de la
												Salud, de Isapres y de Valores y Seguros, que cuente con datos, informaci�n o antecedentes relativos a mi estado de salud
												f�sica y ps�quica; tales como fichas cl�nicas, antecedentes cl�nicos, informes m�dicos y an�lisis o ex�menes de laboratorio
												cl�nicos, para entregar dichos datos, informaci�n o antecedentes a la Compa��a, cuando esta lo solicite, para lo cual otorgo
												mi expreso consentimiento conforme lo dispone la Ley N�19.628 y el art�culo 127 del C�digo Sanitario. Adem�s autorizo a
												la Compa��a a realizar el tratamiento de la informaci�n antes se�alada, todo ello conforme lo dispone la Ley 19.628. El
												consentimiento y autorizaciones precedentes se otorgan por toda la vigencia del seguro, incluyendo
												la etapa de evaluaci�n y durante el procedimiento de liquidaci�n de cualquier siniestro, autorizaciones que no se extinguir�n
												en caso de muerte, conforme lo establece el art�culo 2169 del C�digo Civil. Por otra parte la Compa��a se obliga a guardar
												absoluta reserva y confidencialidad respecto de la informaci�n recibida.
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
<!-- FIN PROPUESTA SEGUROS DESGRAVAMEN L�NEA DE SOBREGIRO EN CUENTA CORRIENTE (LSG) Y L�NEA DE CR�DITO DE EMERGENCIA (LCE) COPIA CORREDORA -->
<!-- INICIO INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO EN CUENTA CORRIENTE Y LINEA DE CR�DITO DE EMERGENCIA DEL BANCO BCI-->
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
								LINEA DE CR�DITO DE EMERGENCIA DEL BANCO BCI
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
									Compa��a Aseguradora: 
								</fo:inline>
								<fo:inline font-size="11pt">
									BCI Seguros Vida S.A.
								</fo:inline>
							</fo:block>
							<fo:block line-height="11pt"  padding-top="3pt" padding-bottom="2pt" padding-left="1pt" text-align="left">
								<fo:inline font-size="11pt" font-weight="bold">
									Clasificaci�n de riesgo: AA- 
								</fo:inline>
								<fo:inline font-size="11pt">
									 seg�n Feller Y Rate y 
								</fo:inline>
								<fo:inline font-size="11pt" font-weight="bold">
									AA- 
								</fo:inline>
								<fo:inline font-size="11pt">
									Seg�n Fitch Ratings
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
									BCI Corredores de Seguros S.A., BCI Seguros Vida S.A., BCI Seguros Generales S.A. y Banco Cr�dito
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
										 Monto Asegurado vigente en la C�a.
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										Hasta 54 a�os
									</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell  border-color="black" border-style="solid">
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" text-align="center">
									<fo:inline font-size="11pt">
										55 a 75 a�os
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
										Siempre sujeto a evaluaci�n a compa��a
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
										Solicitud de Incorporaci�n+Declaraci�n Personal de Salud.
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
										Solicitud de Incorporaci�n + Declaraci�n Personal de Salud + Examen M�dico + Orina completa +
										Perfil lipidito + perfil bioqu�mico.
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
										Solicitud de Incorporaci�n + Declaraci�n Personal de Salud + Examen M�dico + Orina completa +
										HIV + Perfil bioqu�mico + Perfil lip�dico.
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
										La Compa��a de Seguros se reserva el derecho de solicitar mayores antecedentes En aquellos casos
										que lo estime necesario y/o conveniente para la aceptaci�n del asegurable.
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
										75 a�os.
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
										Deudores del Banco Bci L�nea de sobregiro en cuenta corriente y L�nea de cr�dito de emergencia que
										sean personas naturales
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always" padding-top="18pt">
									<fo:inline font-size="11pt" font-weight="bold">                
										Monto Asegurado y Condiciones de Liquidaci�n
									</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block line-height="11pt" keep-together="always" padding-top="2pt" padding-bottom="2pt">
									<fo:inline font-size="11pt" padding-top="2pt" padding-bottom="2pt">                
										Cupo utilizado de la l�nea de sobregiro en cuenta corriente o l�nea de cr�dito de emergencia o ambas
										con un tope m�ximo, correspondiente al cupo autorizado por la entidad contratante; al d�a
										inmediatamente anterior a la fecha de fallecimiento del deudor, m�s los intereses devengados al cierre
										del mes anterior a la fecha de fallecimiento, sobre la base de un servicio regular de la deuda, con un
										tope m�ximo, correspondiente al cupo autorizado por la entidad contratante.
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
										P�g. 1 / 2
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
										La cobertura regir� desde la fecha en que el banco otorga efectivamente la l�nea de
										cr�dito de sobregiro o la l�nea de emergencia y la Compa��a Aseguradora acepta asumir el riesgo, hasta
										el d�a en que se produzca cualquiera de las dos circunstancias siguientes:1) que se cumpla la edad tope
										de cada cobertura, 2) que se extinga el cr�dito que dio origen al seguro.
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
										La prima total corresponde a la tasa indicada a continuaci�n, dependiendo de la vigencia del
										cr�dito, aplicada sobre el monto asegurado inicial.
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
										Para la l�nea de cr�dito de sobregiro,
									</fo:inline>	
									<fo:inline font-size="11pt"> 
										 la tasa es de 5,56 %o (por mil) anual sobre el saldo inicial con
										un m�nimo de UF 0.4 y un m�ximo de UF 6.0.
									</fo:inline>
								</fo:block>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
										La tasa se aplica sobre el cupo total otorgado a la l�nea de cr�dito.
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
										Para la l�nea de emergencia,
									</fo:inline>	
									<fo:inline font-size="11pt"> 
										la tasa es de 3,24 %o (por mil) por semestre con una prima m�nima de
										UF 0.17 y prima m�xima de UF 3 (primas brutas).
									</fo:inline>
								</fo:block>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
										La tasa se aplica sobre el cupo total otorgado a la l�nea de emergencia.
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
											Las primas indicadas son referenciales. En caso que la aseguradora decida evaluar el riesgo espec�fico,
											ello podr�a generar un cambio de las condiciones de aseguramiento y el aumento de la prima, sin
											perjuicio de su derecho a no otorgar en definitiva la cobertura solicitada.
									</fo:inline>
								</fo:block>
								<fo:block line-height="11pt" space-before.optimum="2pt" space-after.optimum="2pt" keep-together="always">
									<fo:inline font-size="11pt"> 
										Declaro que, adem�s del cr�dito que he solicitado al Banco, es mi voluntad contratar el seguro de
										desgravamen individualizado precedentemente, por el precio que se se�ala y estoy en conocimiento que
										puedo obtener el referido cr�dito con la misma tasa y dem�s condiciones que si no adquiriera tal seguro.
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
										Las exclusiones se encuentran contenidas en la p�liza depositada en el registro de la S.V.S. bajo el
										c�digo POL 2 2013 0331.
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
										En caso de consultas, reclamos y denuncias de siniestro, el asegurado se deber� comunicar con BCI
										Corredores de Seguros al tel�fono (02) 25404953 o al e-mail: siniestrosbci@bci.cl., al tel�fono del CRI
										de la Compa��a de Seguros 6006000292 - desde celular 02 - 26799700 o en cualquiera de las oficinas
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
												Nombre completo y Nro de C�dula de Identidad del Cliente
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
												P�g. 2 / 2
											</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
				</fo:table>
<!-- FIN INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO EN CUENTA CORRIENTE Y LINEA DE CR�DITO DE EMERGENCIA DEL BANCO BCI-->
		</fo:flow>
	</fo:page-sequence>
	<!-- FIN INFORMATIVO SOBRE SEGURO DE DESGRAVAMEN PARA DEUDORES LINEA DE SOBREGIRO EN CUENTA CORRIENTE Y LINEA DE CR�DITO DE EMERGENCIA DEL BANCO BCI-->
	</fo:root>
 </xsl:template>
</xsl:stylesheet>