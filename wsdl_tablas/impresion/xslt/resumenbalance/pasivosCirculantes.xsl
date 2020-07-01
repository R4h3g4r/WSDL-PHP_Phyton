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
										<fo:block text-align="left">
											<fo:inline start-indent="4pt"  font-weight="bold">PASIVOS CIRCULANTES</fo:inline>
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
						<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="100pt"/>
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
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	
</xsl:stylesheet>