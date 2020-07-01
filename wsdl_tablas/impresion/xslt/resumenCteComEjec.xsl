<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta" page-height="11.0in" page-width="8.5in" margin-top="0.35in" margin-bottom="0.40in" margin-left="0.5in" margin-right="0.5in">
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:setLocale value="es_CL"></fo:setLocale>
			<fo:page-sequence master-reference="carta" font-family="Arial, Helvetica, sans-serif">
				<fo:flow flow-name="xsl-region-body">
						
<!-- ************************************************************************************-->	
<!-- ************************************   CABEZERA  ***********************************-->
<!-- ************************************************************************************-->

				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="84pt"/>
							<fo:table-column column-width="454pt"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell text-align="center">
								<fo:block>
								<fo:external-graphic width="80px" height="32px">
										<xsl:attribute name="src">
												<xsl:value-of select="info/cliente/logo"/>
									</xsl:attribute>
								</fo:external-graphic>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center">
								<fo:block font-size="18pt" padding-top="16px" padding-bottom="3px" font-weight="bold">Solicitud de Aprobación de Crédito</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:block font-size="7pt">
					<fo:table>	
						<fo:table-column column-width="538pt"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left">
									<fo:block>
										<fo:inline start-indent="4pt" color="white">.</fo:inline>	
									</fo:block>
								</fo:table-cell>  
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
					
<!-- ************************************************************************************-->	
<!-- *******************************  DATOS DEL CLIENTE  ********************************-->
<!-- ************************************************************************************-->
				
					<fo:block font-size="10pt">
					<fo:table text-align="left" border-style="solid" border="0.2pt">	
						<fo:table-column column-width="538pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell table-layout="fixed" column-width="6.5in"  padding="1px">
										<fo:block background-color="#D6FFFF" padding="0px" padding-top="0px">
											<fo:inline font-weight="bold" start-indent="4pt">Datos del Cliente</fo:inline>
										</fo:block>
								   </fo:table-cell>
   								</fo:table-row>
							</fo:table-body>
					</fo:table>
					</fo:block>
					<fo:block font-size="10pt">
						<fo:table table-layout="fixed" column-width="6.5in" border-style="solid" border-color="black" border="0.2pt">	
							<fo:table-column column-width="70pt"/>
							<fo:table-column column-width="230pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="158pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell text-align="left" padding="2px" padding-top="1px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold" >Rut</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left" padding="2px" padding-top="1px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/rut"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									<fo:table-cell text-align="left" padding="2px" padding-top="1px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Fecha Solicitud</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding="2px" padding-top="1px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/fechaSol"/></fo:inline>
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Razón Social</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/razSoc"/></fo:inline>
										</fo:block>
									</fo:table-cell>									
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Oficina</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/sucursal"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
							    </fo:table-row>								
							    <fo:table-row>
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Act. Empresa</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/segmento"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Ejecutivo</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left" padding="2px" padding-top="0px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/ejecutivo"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>								
								<fo:table-row>
									<fo:table-cell text-align="left" padding="2px" padding-top="0px" padding-bottom="0px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Antiguedad</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left" padding="0px" padding-top="0px" padding-bottom="0px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/antiguedad"/></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left" padding="2px" padding-top="0px" padding-bottom="0px">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Calificación</fo:inline>	
										</fo:block>
									</fo:table-cell> 
									<fo:table-cell text-align="left" padding="0px" padding-top="0px" padding-bottom="0px">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/calificacion"/></fo:inline>
										</fo:block>
									</fo:table-cell>									
								</fo:table-row>					
							</fo:table-body>
						</fo:table>
						<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="126pt"/>
								<fo:table-body>
									<fo:table-row>
		                            	<fo:table-cell>
											<fo:block>
												<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
		
<!-- ************************************************************************************-->	
<!-- *****************************   Productos y/o Servicios  ***************************-->
<!-- ************************************************************************************-->
					
					<fo:block font-size="10pt">
						<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="539pt"/>
								<fo:table-body>
									<fo:table-row>
		                	        	<fo:table-cell border-style="solid" padding="1px" border="0.1pt">
											<fo:block background-color="#D6FFFF" padding="0px" padding-top="0px">
												<fo:inline font-weight="bold" start-indent="4pt">Productos y/o Servicios</fo:inline>
											</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="10pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="539pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
										<fo:block padding-top="1px" padding-bottom="0px">
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/productosYservicios"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

<!-- ************************************************************************************-->
<!-- ********************************  Socios / Nombre **********************************-->
<!-- ************************************************************************************-->

				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="338pt" />
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>
 
					<fo:table-header>
						<fo:table-row background-color="#D6FFFF" border-style="solid">
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="1px"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" padding="0px" font-weight="bold">Socios / Nombre</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" padding="0px" font-weight="bold">Rut</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" padding="0px" font-weight="bold">% Participación</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>

					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="1px" padding-bottom="1px"><xsl:value-of select="info/cliente/socios1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/rut1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/participacion1"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="1px" padding-bottom="1px"><xsl:value-of select="info/cliente/socios2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/rut2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/participacion2"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="1px" padding-bottom="1px"><xsl:value-of select="info/cliente/socios3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/rut3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/participacion3"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell text-align="left">
								<fo:block>
									<fo:inline start-indent="4pt" color="white">.</fo:inline>	
								</fo:block>
							</fo:table-cell>  
						</fo:table-row>
					</fo:table-body>
				</fo:table>
					
<!-- ************************************************************************************-->	
<!-- ********************************   HISTORIA  ***************************************-->
<!-- ************************************************************************************-->
					
					<fo:block font-size="10pt">
						<fo:table table-layout="fixed" column-width="6.5in" border-style="solid" border="0.3pt">	
							<fo:table-column column-width="538pt"/>
								<fo:table-body>
									<fo:table-row>
		                	        	<fo:table-cell padding="1px">
											<fo:block background-color="#D6FFFF" padding="0px" padding-top="0px">
												<fo:inline font-weight="bold" start-indent="4pt">Historia</fo:inline>
											</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="10pt">
						<fo:table table-layout="fixed" column-width="6.5in" border-style="solid" border="0.1pt">	
							<fo:table-column column-width="538pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left" padding="2px">
										<fo:block padding-top="1px" padding-bottom="0px">
											<fo:inline start-indent="4pt"><xsl:value-of select="info/cliente/historia"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="7pt">
						<fo:table>	
							<fo:table-column column-width="538pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>

<!-- ************************************************************************************-->
<!-- ********************************   CUPO ACTUAL  ************************************-->
<!-- ************************************************************************************-->

				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="238pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="100pt"/>

 
					<fo:table-header>
						<fo:table-row background-color="#D6FFFF">
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Cupo Actual</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Situación Nueva</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Fecha Vencimiento</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Cupo Máximo</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/cupoActual"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/cupoSituacionNueva"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/fechaVencimiento"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Detalles de Línea</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Situación Actual</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Situación Nueva</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Spread propuesto</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<xsl:for-each select="info/detLineas">
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="detalleLinea"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="situacionActual"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="situacionNueva"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="spreadPropuesto"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell text-align="left">
								<fo:block>
									<fo:inline start-indent="4pt" color="white">.</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>

<!-- ************************************************************************************-->
<!-- ********************************  DEUDA/GARANTIA(M$) *******************************-->
<!-- ************************************************************************************-->

				<fo:block font-size="10pt">
					<fo:table>	
						<fo:table-column column-width="538pt"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left">
									<fo:block>
										<fo:inline start-indent="4pt" color="black" font-weight="bold">Deuda/Garantía (M$)</fo:inline>	
									</fo:block>
								</fo:table-cell>  
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="70pt"/>
							<fo:table-column column-width="127pt"/>
							<fo:table-column column-width="170pt"/>
							<fo:table-column column-width="170pt"/>

					<fo:table-header>				
						<fo:table-row background-color="#D6FFFF">
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Cupo Máximo</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Total de Garantías sin Aval</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Excedentes/(Déficit)Garantía</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>			
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" background-color="#D6FFFF" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Cliente</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" padding-right="3px"><xsl:value-of select="info/cliente/cupoMaximoCliente"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/totalGarantiasCliente"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/excedentesCliente"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" background-color="#D6FFFF" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0	px" font-weight="bold">Resto Grupo</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/cupoMaximoRestoGrupo"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/totalGarantiasRestoGrupo"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/excedentesRestoGrupo"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell text-align="left">
								<fo:block>
									<fo:inline start-indent="4pt" color="white">.</fo:inline>	
								</fo:block>
							</fo:table-cell>  
						</fo:table-row>
					</fo:table-body>
				</fo:table>

<!-- ************************************************************************************-->
<!-- ********************************  VISACION *****************************************-->
<!-- ************************************************************************************-->

				<fo:block font-size="10pt">
					<fo:table>	
						<fo:table-column column-width="538pt"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left">
									<fo:block>
										<fo:inline start-indent="4pt" color="black" font-weight="bold">Visación</fo:inline>	
									</fo:block>
								</fo:table-cell>  
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:table text-align="left" table-layout="fixed" column-width="2.0in" border-style="solid">
							<fo:table-column column-width="149pt"/>
							<fo:table-column column-width="30pt"/>
							<fo:table-column column-width="149pt"/>
							<fo:table-column column-width="30pt"/>
							<fo:table-column column-width="149pt"/>
							<fo:table-column column-width="30pt"/>

					<fo:table-header >				
						<fo:table-row background-color="#D6FFFF">
							<fo:table-cell padding="1px" border-style="solid" border-right-color="#D6FFFF" border-left-color="#D6FFFF" border-top-color="#D6FFFF" border="0.2pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Informe Cta. Cte(M$)</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1px" border-style="solid" border-right-color="#D6FFFF" border-left-color="#D6FFFF" border-top-color="#D6FFFF" border="0.2pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1px" border-style="solid" border-right-color="#D6FFFF"  border-left-color="#D6FFFF" border-top-color="#D6FFFF" border="0.2pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Deuda BCI(M$)</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1px" border-style="solid" border-right-color="#D6FFFF"  border-left-color="#D6FFFF" border-top-color="#D6FFFF" border="0.2pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="1px" border-style="solid" border-right-color="#D6FFFF"  border-left-color="#D6FFFF" border-top-color="#D6FFFF" border="0.2pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Deuda Super(M$)</fo:block>
							</fo:table-cell>
							<fo:table-cell border-style="solid" border-right-color="#D6FFFF"  border-left-color="#D6FFFF" border-top-color="#D6FFFF" border="0.4pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>			
					<fo:table-body border="0.5pt" border-color="black" border-style="solid" border-right-color="#FFFFFF" border-left-color="#FFFFFF">
						<fo:table-row>
							<fo:table-cell  padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Nro.Cta.Ctes</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/nroCtaCtes"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Tot.Dir.</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/totDir"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Actualiz.al</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/actualizAl"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Antiguedad</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/antiguedad"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Tot.Ind</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/totInd"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold" >Dir.Vigente</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/dirVigente"/></fo:block>
							</fo:table-cell>					
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Saldo Disp.</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/saldoDisp"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Tot.Ven.Ind.</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/totVenInd"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir.Vencida</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/dirVencida"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Tot.Dep.Trim.Act.</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/totDepTrimAct"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Tot.Compl.</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/totCompl"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir.Inv.Finan.</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/dirInvFinanc"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Prom.Trim.Actual</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/promTrimActual"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Deuda Total</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/deudaTotal"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir.Op.Pacto</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/dirOpPacto"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Prom.Trim.Anterior</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/promTrimAnterior"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Castigada</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="0px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/castigada"/></fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Mor.30-90 días</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/mor30-90Dias"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir.Castigada</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/dirCastigada"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Ind.Vigente</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/indVigente"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Ind.Vencida</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/indVencida"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Ind.Castigada</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/indCastigada"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-bottom-color="#FFFFFF" border-top-color="#FFFFFF" border-right-color="#FFFFFF"  border-left-color="#000000" border="0pt" background-color="#FFFFFF">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell border-style="solid" border-bottom-color="#FFFFFF" border-top-color="#FFFFFF" border-right-color="#FFFFFF"  border-left-color="#FFFFFF" border="3pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell border-style="solid" border-bottom-color="#FFFFFF" border-top-color="#FFFFFF" border-right-color="#FFFFFF"  border-left-color="#FFFFFF" border="3pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell border-style="solid" border-bottom-color="#FFFFFF" border-top-color="#FFFFFF" border-right-color="#FFFFFF"  border-left-color="#FFFFFF" border="3pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell border-style="solid" border-bottom-color="#FFFFFF" border-top-color="#FFFFFF" border-right-color="#FFFFFF"  border-left-color="#FFFFFF" border="3pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Tot.Dda.Super</fo:block>
							</fo:table-cell >
							<fo:table-cell border-style="solid" border-bottom-color="#FFFFFF" border-top-color="#FFFFFF" border-right-color="#000000"  border-left-color="#FFFFFF" border="0pt" background-color="#FFFFFF">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" text-align="right"><xsl:value-of select="info/cliente/totDdaSuper"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				<fo:block font-size="7pt">
						<fo:table>	
							<fo:table-column column-width="530pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
								</fo:table-row>
							</fo:table-body>
						</fo:table>
				</fo:block>


<!-- ************************************************************************************-->
<!-- **********************  NARRATIVA DE LO SOLICITADO  ********************************-->
<!-- ************************************************************************************-->

					<fo:block font-size="10pt">
						<fo:table text-align="left" table-layout="fixed" column-width="6.5in" border-style="solid" border-color="black" border="0.1pt">	
							<fo:table-column column-width="540pt"/>
								<fo:table-body>
									<fo:table-row>
		                	        	<fo:table-cell padding="1px">
											<fo:block background-color="#D6FFFF" padding="0px" padding-top="0px">
												<fo:inline font-weight="bold" start-indent="4pt">Narrativa de lo Solicitado</fo:inline>
											</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="10pt" border-style="solid" border-color="black" border="0.2pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="526pt"/>
							<fo:table-body>
								<xsl:for-each select="info/narrativasYRecomendaciones">
									<fo:table-row>
										<fo:table-cell text-align="left" border-color="white" border="0.5pt">
											<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
												<xsl:value-of select="rolEjecutivo"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" border-color="white" border="0.5pt">
											<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
												<xsl:value-of select="nombreEjecutivo"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" border-color="white" border="0.5pt">
											<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
												<xsl:value-of select="actividadEjecutivo"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" border-color="white" border="0.5pt">
											<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
												<xsl:value-of select="accionTomada"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" border-color="white" border="0.5pt">
											<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
												<xsl:value-of select="fechaRecSolicitud"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left" border-color="white" border="0.5pt">
											<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
												<xsl:value-of select="observacionesAccion"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
									<fo:table-row>
										<fo:table-cell text-align="left">
											<fo:block>
												<fo:inline start-indent="4pt" color="white">.</fo:inline>	
											</fo:block>
										</fo:table-cell>  
									</fo:table-row>									
								</xsl:for-each>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
				<fo:block font-size="7pt">
						<fo:table>	
							<fo:table-column column-width="530pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
								</fo:table-row>
							</fo:table-body>
						</fo:table>
				</fo:block>

<!-- ************************************************************************************-->
<!-- **************************  DETALLE DEUDA BCI  *************************************-->
<!-- ************************************************************************************-->

				<fo:block font-size="10pt">
					<fo:table>	
						<fo:table-column column-width="538pt"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left" padding="1px">
									<fo:block>
										<fo:inline start-indent="4pt" color="black" font-weight="bold">Detalle Deuda BCI</fo:inline>	
									</fo:block>
								</fo:table-cell>  
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="160pt"/>
							<fo:table-column column-width="108pt"/>
							<fo:table-column column-width="90pt"/>
							<fo:table-column column-width="90pt"/>
							<fo:table-column column-width="90pt"/>
 
					<fo:table-header>
						<fo:table-row background-color="#D6FFFF" border-style="solid">
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Producto</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Moneda</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Sit.Contable</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Sit.Cartera</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Monto</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>
					<fo:table-body> 
						<xsl:for-each select="info/detalleDeudaBci">
							<fo:table-row>
								<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
										<xsl:value-of select="producto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
										<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
										<xsl:value-of select="sitContable"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
										<xsl:value-of select="sitCartera"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px">
										<xsl:value-of select="monto"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
						<fo:table-row>
							<fo:table-cell text-align="left">
								<fo:block>
									<fo:inline start-indent="4pt" color="white">.</fo:inline>	
								</fo:block>
							</fo:table-cell>  
						</fo:table-row>
					</fo:table-body>
				</fo:table>	
				
<!-- ************************************************************************************-->
<!-- ********************  DETALLE EVOLUCION DEUDA SUPER  *******************************-->
<!-- ************************************************************************************-->

				<fo:block font-size="10pt">
					<fo:table>	
						<fo:table-column column-width="538pt"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left">
									<fo:block>
										<fo:inline start-indent="4pt" color="black" font-weight="bold">Detalle Evolución Deuda Super</fo:inline>	
									</fo:block>
								</fo:table-cell>  
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="160pt"/>
							<fo:table-column column-width="108pt"/>
							<fo:table-column column-width="90pt"/>
							<fo:table-column column-width="90pt"/>
							<fo:table-column column-width="90pt"/>
 
					<fo:table-header>
						<fo:table-row background-color="#D6FFFF" border-style="solid">
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"> </fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"><xsl:value-of select="info/cliente/fecha1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"><xsl:value-of select="info/cliente/fecha2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"><xsl:value-of select="info/cliente/fecha3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt"> 
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold"><xsl:value-of select="info/cliente/fecha4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-header>

					<fo:table-body>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Vigentes</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVigentes1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVigentes2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVigentes3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVigentes4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Morosa</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirMorosa1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirMorosa2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirMorosa3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirMorosa4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Vencida</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVencida1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVencida2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVencida3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirVencida4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Consumo / Acr</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirConsumoAcr1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirConsumoAcr2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirConsumoAcr3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirConsumoAcr4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Hipotecaria</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirHipo1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirHipo2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirHipo3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirHipo4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Inv. Financiera</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirInvFinan1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirInvFinan2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirInvFinan3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirInvFinan4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Ope C / Pacto</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirOpe1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirOpe2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirOpe3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirOpe4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Dir. Comercial</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirComercial1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirComercial2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirComercial3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/dirComercial4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">  
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">+Mex. Vigentes</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVigentes1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVigentes2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVigentes3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVigentes4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="3px" font-weight="bold">+Mex. Vencida</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVencida1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVencida2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVencida3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/mexVencida4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Ind. Vigente</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVigente1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVigente2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVigente3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVigente4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Ind. Vencida</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVencida1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVencida2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVencida3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/indVencida4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Castigada Dir.</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaDir1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaDir2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaDir3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaDir4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Castigada Ind.</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaInd1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaInd2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaInd3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/castigadaInd4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">L. Crédito Disp. N.U.</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/creditoDisp1"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/creditoDisp2"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/creditoDisp3"/></fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
								<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="info/cliente/creditoDisp4"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell text-align="left">
								<fo:block>
									<fo:inline start-indent="4pt" color="white">.</fo:inline>	
								</fo:block>
							</fo:table-cell>  
						</fo:table-row>
					</fo:table-body>
				</fo:table>

<!-- ************************************************************************************-->
<!-- ******************  RESUMEN ESTADOS FINANCIEROS(M$)  *******************************-->
<!-- ************************************************************************************-->	

				<fo:block font-size="10pt">
					<fo:table>	
						<fo:table-column column-width="538pt"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell text-align="left">
									<fo:block>
										<fo:inline start-indent="4pt" color="black" font-weight="bold">Resumen Estados Financieros (M$)</fo:inline>	
									</fo:block>
								</fo:table-cell>  
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
					<fo:table-column column-width="172pt"/>
					<fo:table-column column-width="122pt"/>
					<fo:table-column column-width="122pt"/>
					<fo:table-column column-width="122pt"/>
 
						<fo:table-header>
							<fo:table-row background-color="#D6FFFF" border-style="solid">
								<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt" padding="2px">
										<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px" font-weight="bold">Partidas
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" font-weight="bold" padding-top="0px" padding-bottom="0px">
										AL <xsl:value-of select="info/EEFF/fechaEstFin1"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" font-weight="bold" padding-top="0px" padding-bottom="0px">
										AL <xsl:value-of select="info/EEFF/fechaEstFin2"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="center" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" font-weight="bold" padding-top="0px" padding-bottom="0px">
										AL <xsl:value-of select="info/EEFF/fechaEstFin3"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-header>
						<fo:table-body>
						<xsl:for-each select="info/EEFF">
							<fo:table-row>
								<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt" background-color="#D6FFFF" padding="2px">
									<fo:block font-size="10pt" font-weight="bold" padding-top="0px" padding-bottom="0px"><xsl:value-of select="nombreCampo"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="valorCampoA"/>
											</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="valorCampoB"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt" padding="2px">
									<fo:block font-size="10pt" padding-top="0px" padding-bottom="0px"><xsl:value-of select="valorCampoC"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</xsl:for-each>
						</fo:table-body>												
				</fo:table>
				
				
			
<!-- ************************************************************************************-->

				</fo:flow>			
			</fo:page-sequence>
		</fo:root>	
	</xsl:template>
</xsl:stylesheet>