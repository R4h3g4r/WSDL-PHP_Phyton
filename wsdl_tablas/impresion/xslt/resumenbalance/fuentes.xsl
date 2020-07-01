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
											<xsl:text>Banco Cr�dito e Inversiones</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2pt">
										<fo:block text-align="center">
											<xsl:text >FUENTES Y USO DE FONDOS</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
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
						<fo:table  text-align="left" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="504pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">GENERACION OPERATIVA BRUTA</fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Utilidad (P�rdida) Neta</fo:inline>	
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobUtilPerdNet'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row> 
									   <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Depreciaci�n:</fo:inline>
										</fo:block>
									   </fo:table-cell>
                                                                           <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobDepreciacion'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Correcci�n Monetaria:</fo:inline>	
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobCorrecMon'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									     <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Amortizaci�n y Castigos:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobAmorCast'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Utilidad/P�rdida Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobUtilPerdEmpRel'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
									     <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Otros Ingresos Sin Movimientos de Fondos:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobOtrIngMovFond'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Utilidad/P�rdida Venta de Activo Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobUtilPerdVtaAF'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
							</fo:table-row>
							<fo:table-row>
									     <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Generaci�n Operativa Bruta :</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/gobGenOpeBruta'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">MENOS NECESIDADES OPERATIVAS</fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Deposito a Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDeposiPlazo'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Valores Negociables:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoValNegociab'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Deudores por Venta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDeudoresVta'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Documentos por Cobrar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDocporCobra'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Deudores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDeudorVario'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Existencias:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoExistencias'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Impuestos por Recuperar: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoImpRecupera'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Gastos Pagados por Anticipado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoGtosPagAnti'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Impuestos Diferidos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoImpDiferido1'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Otros Activos Circulantes:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoOtroActCirc'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Menos Necesidades Operativas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoNeseciOpera'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">MAS FUENTES OPERATIVAS</fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Obligaciones Largo Plazo con Vcto. Dentro de un A�o:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoObLPVto1Ano'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Obligaciones con P�blico Efec. De Comercio: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoObPuEfeCome'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Obligaciones con P�blico (Bonos) :</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoOblPubBonos'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Dividendos por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDividenPaga'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Cuentas por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoCuentasPaga'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Documentos por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDocumenPaga'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Acreedores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAcreeVarios'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Provisiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoProvisiones'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Retenciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoRetenciones'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Impuesto a la Renta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoImpuesRenta'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>	
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Impuesto Percibidos por Adelantado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoIngPercAdel'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>	
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Impuesto Diferidos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoImpDiferido'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>	
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Obligaciones Leasing CP:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoObPuEfeCome'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>	
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Otros Pasivos Circulantes:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoOtrPasCircu'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>	
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total M�s Fuentes Operativas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoFuentesOper'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">GENERACION NETA OPERATIVA DE CAJA</fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Generaci�n Neta Operativa de Caja:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoGenNetOpCja'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">MENOS NECESIDADES NO OPERATIVAS</fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Dctos. x Cobrar Emp. Relac. C/P. :</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDxCEReCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Activo Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumActvFijo'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Inversiones Empresas Relacionadas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumInvEmRel'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Aumento Inversiones Otras Sociedades:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumInvOtSoc'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Aumento Menos Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumMenVlInv'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Mayor Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumMayVlInv'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Aumento Deudores a Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDeudorLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Dctos. x Cobrar Emp. Relac. L/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDxCEReLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Intangibles:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumIntangib'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Amortizaci�n:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumAmortiza'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Otros Activos Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumOtrActLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Activos Leasing:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumActLeasi'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Obligaciones Bancos Inst. Financieras C/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisObBcIFCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Obligaciones Bancos Inst. Financieras Porci�n L/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisObBcIFLP1'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Dctos. x Pagar Emp. Relacionadas C/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisDxPERlCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Obligaciones Leasing C/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisOblLsgCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Obligaciones Bancos Inst. Financieras L/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisObBcIFLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Obligaciones Con el P�blico:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisOblPubli'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Documentos Por Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisDocxPaga'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Acreedores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisAcrVario'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>								
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Documentos Por Pagar Emp. Realc L/P.:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisDxPERlLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Provisiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisProvisio'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Otros Pasivos Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisOtrPasLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Obl. Leasing Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisOblLsgLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Patrimonio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisPatrimon'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Disminuci�n Inter�s Minoritario:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisIntMinor'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Otras Disminuciones de Patrimonio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoOtrDisPatri'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Dividendos Pagados:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDiviPagados'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Menos Necesidades No Operativas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoTotNesNoOpe'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">M�S FUENTES NO OPERATIVAS</fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Dctos. x Cobrar Emp. Realc. C/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline    start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisDxCERlCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Activo Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisActvFijo'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Inversiones Empresas Relacionadas: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisEmpRelac'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Inversiones Otras Sociedades:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisInOtrSoc'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Disminuci�n Menor Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisMenVlInv'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Mayor Valor Inversiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisMayVlInv'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Deudores a Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisDeudorLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Dctos. x Cobrar Emp. Realc. L/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisDxCERlLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Intangibles:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisIntangib'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Disminuci�n Amortizaci�n:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisAmortiza'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Otros Activos de Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisOtrActLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Disminuci�n Activos Leasing:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDisActivLsg'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Obl. c/Bancos e Ins. Financ. C/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumObBcIFCP1'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline   start-indent="4pt">Aumento Obl. c/Bancos e Ins. Financ. Porci�n L/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumObBIFPLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Documentos x Pagar Empresas Relac. C/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDxCERlCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Obligaciones Leasing C/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumOblLsgLP1'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Obligaciones Banco Inst. Financieras L/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumObBcIFCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Obligaciones con el P�blico:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumOblPubli'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Documentos x Pagar:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDocxPaga'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Acreedores Varios:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumAcreVari'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Documentos x Pagar Empresas Relac. L/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDxCERlLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Provisiones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumProvisio'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Otros Pasivos Largo Plazo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumOtrPasLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumentos Obligaciones Leasing L/P:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumOblLsgLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Aumento Patrimonio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumPatrimon'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Aumento Inter�s Minoritario:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumIntMinor'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Otros Aumentos de Patrimonio:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoOtrAumPatri'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline start-indent="4pt">Dividendos Percibidos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoDivPercibid'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Emisi�n de Acciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoEmisionAcci'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  start-indent="4pt">Venta de activo Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoVtaActvFijo'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total M�s Fuentes No Operativas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoTotFtsNoOpe'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">AUMENTO / DISMINUCI�N NETA CAJA </fo:inline>
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
		                                                           <fo:table-cell>
										<fo:block text-align="left">
											<fo:inline  font-weight="bold"  start-indent="4pt">Aumento / Disminuci�n Neta Caja :</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block text-align="right">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioFuentes/usoAumDisNtCaj'/></fo:inline>
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