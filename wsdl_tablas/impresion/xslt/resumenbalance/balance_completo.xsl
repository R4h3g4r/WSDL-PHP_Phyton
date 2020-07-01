<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"></xsl:output>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta" page-height="11.0in" page-width="8.5in" margin-top="0.75in" margin-bottom="1.25in" margin-left="1.0in" margin-right="1.0in">
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="carta" font-family="Arial, Helvetica, sans-serif">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="6.5in"></fo:table-column>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="2pt">
										<fo:block text-align="right">
											<xsl:text>Banco Crédito e Inversiones</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2pt">
										<fo:block text-align="center">
											<fo:inline start-indent="4pt"  font-weight="bold">ESTADO FINANCIERO - BALANCE</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">DATOS GENERALES</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="126pt"/>
							<fo:table-column column-width="126pt"/>
							<fo:table-column column-width="126pt"/>
							<fo:table-column column-width="126pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Nombre Cliente:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/nombreCliente"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha de Balance:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/fechaBalance"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">IdC Cliente:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/idCliente"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">Número de Meses:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/numeroMeses"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Ejecutivo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/ejecutivo"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell text-align="left">
										<fo:block>
										<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">Número de Balance:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/numeroBalance"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Ejecutivo del Cliente:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/ejecutivoCliente"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">Tipo de Balance:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/tipoBalance"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Actividad Económica:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/actividadEconomica"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">Cobertura:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/cobertura"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Estado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/estado"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											<fo:inline  font-weight="bold"  start-indent="4pt">Auditor:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/auditor"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Cifras en:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/tipoCifras"/></fo:inline>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									   </fo:table-cell> 									     
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL ACTIVOS CIRCULANTES</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Disponible:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDisponible" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Depósito a Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDepositoPlazo" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block >
											<fo:inline start-indent="4pt">Valores Negociables:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actValoresNegociables" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Deudores por Venta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDeudoresVenta"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Documentos por Cobrar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDocPorCobrar"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Deudores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actVariosDeudores"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Doctos. y Cuentas por Cobrar Empresas Relacionadas: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDocyCxCEmpRelUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Existencias:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actExistencias"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos por Recuperar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actImpPorRecuperar"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Gastos Pagados por Anticipado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actGastosPagPorAntic"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos Diferidos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actImpDiferidos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Otros Activos Circulantes:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actOtrosActCirculante"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesActCirUno"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValActCirUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesActCirDos"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValActCirDos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesActCirTres"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValActCirTres"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Total Activos Circulantes:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actTotActCirculantes"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL ACTIVOS FIJOS</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Terrenos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actTerrenos" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Construcciones y Obras: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actConstruccionyObras" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Maquinaria y Equipos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actMaquinariayEquipos" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt">Bienes Agrícolas y Animales:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actAnimales" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Bienes Agrícolas Plantaciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actPlantaciones" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Otros Activos Fijos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actOtrosActivosFijos" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Mayor Valor Retasación Técnica Activo Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actMayorValRetTecActF" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Depresación Acumulada:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDepreciacionAcum" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Total Activos Fijos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actTotalActivoFijo" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL OTROS ACTIVOS</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Inversión Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actInvEmpRelacionada" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Inversión en Otras Sociedades: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actInvOtrasSociedades" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Menor Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actMenValorInv" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Mayor Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actMayValorInv" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Deudores a Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDeudoresLargoPlazo" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Doctos. Y Cuentas Cobrar Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actDocyCxCEmpRelDos" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Intangibles:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actIntangibles" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Amortización:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actAmortizacion" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Otros Activos Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actOtrosActLargoPlazo" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Activos en Leasing:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actActivosLeasing" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesActCirLPUno"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValActCirLPUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesActCirLPDos"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValActCirLPDos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesActCirLPTres"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValActCirLPTres"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Total Otros Activos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actTotalOtrosActivos" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
				       <fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL  ACTIVOS</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Activos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/actTotalActivos" /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL PASIVOS CIRCULANTES</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Oblig. c/Bcos. e Inst. Fin. Corto Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblBcoseInstFinCP' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Oblig. c/Bcos. e Inst. Fin. Largo Plazo: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblBcoseInstFinLP' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Obligaciones c/Público (Efectos de Comercio): </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblPubilcEfecComer' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Obligaciones c/Público (Bonos):</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblConPublBonoUno' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Obligaciones Largo Plazo c/Vencimiento de un Año:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblLPConVctoUnAno' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Dividendos a Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDividendosPorPagar' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasCuentasPorPagar' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Documentos por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDocPorPagarUno' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Acreedores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasVariosAcreedUno' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Doctos. y Cuentas Pagar Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDocyCxPEmpRelacUno' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left"> 
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasProvisionesUno' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Retenciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasRetenciones' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Impuesto a la Renta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasImpRenta' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Ingresos Percibidos por Adelantado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasIngrePercPorAdelan' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos Diferidos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasImpDiferidos' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Otros Pasivos Circulantes:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOtrosPasCirculante' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left" >
										<fo:block>
											<fo:inline start-indent="4pt">Obligaciones Leasing Corto Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/lsgDeudaLeasingCP' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPasCirUno"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPasCirUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPasCirDos"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPasCirDos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPasCirTres"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPasCirTres"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Total Pasivos Circulantes:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasTotalPasCirculante' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL PASIVOS LARGO PLAZO</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Obligaciones con Bcos. e Inst. Fin.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblConBcoeInstFin' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt">Obligaciones c/Público (Bonos):</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOblConPublBonoDos' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Documentos por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDocPorPagarDos' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Acreedores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasVariosAcreedDos' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Doctos. y Cuentas Pagas Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDocyCxPEmpRelacDos' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Provisiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasProvisionesDos' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Otros Pasivos Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOtrosPasivoLP' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Obligaciones Leasing Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/lsgDeudaLeasingLP' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPasCirLPUno"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPasCirLPUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPasCirLPDos"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPasCirLPDos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Total Pasivo Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasTotalPasivoLP' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">INTERES MINORITARIO</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table  table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Interés Minoritario:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasIntMinoriotario' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>										
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL PASIVOS EXIGIBLES</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Pasivos Exigibles: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasPasivoExigible' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>										
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">TOTAL PASIVOS </fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table  table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Pasivos: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasTotalPasivo' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>										
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"> PATRIMONIOS</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Capital Pagado:  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasCapitalPagado' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Reserva Revaloración Capital: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasResvRevalorCapital' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Sobreprecio Venta Acciones Propias: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasSobPrecVtaAccProp' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Reserva Mayor Valor del Act. Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasReservPorMayValo' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Otras Reservas: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasOtrasReservas' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Déficit Acum. Período Desarrollo: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDeficitAcumPerDesa' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Utilidades Retenidas:  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasUtilRetenidas' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Reserva Futuros Dividendos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasReservFutDividendo' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidades Acumuladas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasUtilidadesAcum' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Pérdidas Acumuladas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasPerdidasAcum' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Utilidad (Pérdida) del Ejercicio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasUtilPerdEjercicio' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Dividendos Provisorios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasDividenProvis' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPatrimonioUno"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPatrimonioUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesPatrimonioDos"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValPatrimonioDos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Total Patrimonio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/pasTotalPatrimonio' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">RESULTADO OPERACIONAL</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Ingreso Explotación: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrIngreExplotacion' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Costo Explotación:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrCostoExplotacion' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Depreciación del Ejercicio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/dadDepreciacion' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Margen Explotación:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrMargenExplotacion' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos Administración y Ventas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrGastosAdminVtas' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Total Resultado Operacional:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrResultadoOperac' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">RESULTADO NO OPERACIONAL</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table  table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline    start-indent="4pt">Ingresos Financieros: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrIngreFinanciero' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt">Utilidad Inversión Empresas Relacionadas: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrUtilInvEmpRelac' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Otros Ingresos Fuera Explotación: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrOtrosIngreFueraExp' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Pérdida Inversión Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrPerdInvEmpRelac' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Amortización Menor Valor Inversiones: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrAmortMenValorInv' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt">Gastos Financieros: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrGastosFinancieros' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block >
											<fo:inline start-indent="4pt">Otros Egresos Fuera Explotación:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block >
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrOtrosEgreFuerExplo' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt">Corrección Monetaria:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrCorrecMonetaria' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesCtaResultadoUno"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValCtaResultadoUno"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaDesCtaResultadoDos"/></fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/ccaValCtaResultadoDos"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Total Resultado No Operacional:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block >
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrResultNoOpera' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					 <fo:block font-size="8pt">
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
					<fo:block font-size="8pt">
					<fo:table text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
								<fo:table-body>
									<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">UTILIDAD (PERDIDA) EJERCICIO</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Resultado Antes Impuesto a la Renta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrResulAntImpRenta' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt">Impuesto a la Renta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrImpRenta' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Utilidad (Pérdida) Consolidada:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrUtilPerdConso' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt">Interés Minoritaria:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrIntMinoritario' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Utilidad (Pérdida) Líquida:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrUtilPerdLiquida' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt">Amortización Mayor Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block background-color="#F0F0F0">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrAmortMayValorInv' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Total Utilidad (Pérdida) Ejercicio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioBalance/edrUtilPerdEjercicio' /></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
							</fo:table-body>
						</fo:table>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	
</xsl:stylesheet>