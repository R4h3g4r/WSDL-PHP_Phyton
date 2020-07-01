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
											<fo:inline start-indent="4pt"  font-weight="bold">ACTIVOS FIJOS</fo:inline>
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
						<fo:table table-layout="fixed" column-width="6.5in" >	
							<fo:table-column column-width="300pt"/>
							<fo:table-column column-width="100pt"/>
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
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	
</xsl:stylesheet>