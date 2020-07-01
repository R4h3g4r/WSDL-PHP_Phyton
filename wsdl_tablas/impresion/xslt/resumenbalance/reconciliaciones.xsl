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
						<fo:table  table-layout="fixed" column-width="6.5in">
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
											<xsl:text >RECONCILIACIONES</xsl:text>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">RECONCILIACIÓN ACTIVO INMOVILIZADOS</fo:inline>
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
											<fo:inline  start-indent="4pt">Saldo Inicial Activo Inmovilizado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMasRevalPeriodo'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row> 
									   <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Más Revalorización Período:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recSalIniFinActInmov'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Menos Venta Activos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMenVentaActivos'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Menos Depreciación:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMenCastActFijo'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Menos Castigo Activo Fijo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMenDepreciacion'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Subtotal Ajuste:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recPatrimonioTotal'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Saldo Final Activo Inmovilizado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMasUtilPerdNeta'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
									     <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Gastos de Capital:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMasEmisionAcc'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">RECONCILIACIÓN PASIVO NO EXIGIBLE</fo:inline>
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
											<fo:inline  start-indent="4pt">Saldo Inicial:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMasOtrEspecif'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Más Utilidad (Perdidad) Neta:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMasRevaloriza'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Más Emisión de Acciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recAumDisCapReserv'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Más otros Específicos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMenosOtros'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Más Revalorización:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recAumDisCapReserv'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Total Aumentos:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recAumeDis'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Menos Dividendos: </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMenDividendos'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Menos Otras Disminuciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recMenOtrDismin'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Total Disminuciones:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recSaldoFin'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">AUMENTO / DISMINUCIÓN CAPITAL Y RESERVAS</fo:inline>
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
		                                                           <fo:table-cell text-align="left" >
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Aumento / Disminución Capital y Reservas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right" >
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recTotAumento'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">SALDO FINAL CAPITAL Y RESERVAS</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">Saldo Final Capital y Reservas:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioReconciliaciones/recTotalDism'/></fo:inline>
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