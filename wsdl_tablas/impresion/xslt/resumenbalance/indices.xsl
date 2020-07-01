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
											<fo:inline start-indent="4pt"  font-weight="bold">ESTADO FINANCIERO - INDICES</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">DETALLE BALANCE</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" >	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="204pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left" >
										<fo:block>
											<fo:inline start-indent="4pt">Patrimonio Neto : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPatrimonioNeto'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									    
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left" >
										<fo:block>
											<fo:inline  start-indent="4pt">Pasivo Exigible : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPasExigible'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									     
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left" >
										<fo:block>
											<fo:inline start-indent="4pt">Capital de Trabajo : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indCapitalDeTrabajo'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 									   
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left" >
										<fo:block>
											<fo:inline start-indent="4pt">Vtas. Equilibrio Operacional : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indVtasDeEquiOper'/></fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">INDICADOR LIQUIDEZ</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-column column-width="14pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Liquidez Corriente : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indLiquidezCorriente'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">Vs</fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Liquidez Acida : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indLiquidezAcida'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt">Vs</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Perm. de Inventario : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPermanenciadeInv'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">Ms</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Perm. de Crédito : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPermanenciaDeCred'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									    <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">Ms</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Perm. de Ctas. x Pagar :Perm. de Ctas. x Pagar : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPermDeCtasPorPagar'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell  text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">Ms</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">ESTRUCTURA FINANCIERA</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-column column-width="14pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Part. Deuda Corto Plazo :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartDeudaCP'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Part. Deuda Largo Plazo :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartDeudaLP'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Part. Patrimonial :</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartPatrimonial'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Leverage : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indLeverage'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									    <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">ESTRUCTURA ACTIVOS</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-column column-width="14pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Part. Activos Líquidos : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartActivoLiquido'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Part. Otros Act. Circulantes : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartOtrActCir'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline   start-indent="4pt">Part. Activos Fijos : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartActivosFijos'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Part. Otros Activos : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPartOtrosActivos'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									    <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">COBERTURA PASIVOS</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-column column-width="14pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Part. Exigible / G.O.B. :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPasivoexigibleGOB'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">Añ</fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Part. Exigible-Act. / Líquido G.O.B. :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indPasExigActLiqGOB'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">COBERTURA CARGA FINANCIERA</fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-column column-width="14pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left" >
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad Operacional/Gto. Financiero :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indUtilOperGtoFinan'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell  text-align="left" >
										<fo:block>
											<fo:inline start-indent="4pt">G.O.B.+Gto. Financ. / Gto Financiero :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indGOBGtoFinaGtoFina'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell  text-align="right" >
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
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
											<fo:inline  font-weight="bold"  start-indent="4pt">RENTABILIDAD Y GENERACION  </fo:inline>
										</fo:block>
									   </fo:table-cell>
   									</fo:table-row>
								</fo:table-body>
							</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="190pt"/>
							<fo:table-column column-width="14pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad Operacional/Venta :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indUtilOperacVta'/></fo:inline>
										</fo:block>
									   </fo:table-cell>
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Utilidad/Venta : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indUtilidadVenta'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline    start-indent="4pt">Utilidad/Patrimonio :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indUtilPatrimonio'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad antes C.M./Venta :  </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indUtilAntesCMVtas'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">Utilidad antes C.M./Patrimonio : </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indUtilAntesCMPatrim'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline  start-indent="4pt">G.O.B./Venta :   </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline  start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indGOBVenta'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt">%</fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">G.O.B./Patrimonio :   </fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline   start-indent="4pt"><xsl:value-of select='resumenBalance/EnvoltorioIndice/indGOBPatrimonio'/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									   <fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>
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