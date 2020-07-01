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
											<fo:inline start-indent="4pt"  font-weight="bold">PASIVOS LARGO PLAZO</fo:inline>
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
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="100pt"/>
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
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	
</xsl:stylesheet>