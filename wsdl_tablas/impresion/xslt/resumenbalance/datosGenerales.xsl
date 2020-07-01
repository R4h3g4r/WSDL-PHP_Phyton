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
										<fo:block text-align="right" font-weight="bold">
											<xsl:text>Banco Crédito e Inversiones</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell padding="2pt" font-weight="bold">>
										<fo:block text-align="left">
											<xsl:text>DATOS GENERALES</xsl:text>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
						<fo:block font-size="8pt">
					<fo:table text-align="center" table-layout="fixed" column-width="6.5in">	
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
							<fo:table-column column-width="126pt"/>
							<fo:table-column column-width="126pt"/>
							<fo:table-column column-width="126pt"/>
							<fo:table-column column-width="126pt"/>
							<fo:table-body>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt" >Nombre Cliente:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/nombreCliente"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha de Balance:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/fechaBalance"/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">IdC Cliente:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/idCliente"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">Número de Meses:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/numeroMeses"/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Ejecutivo:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/ejecutivo"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Número de Balance:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/numeroBalance"/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">Ejecutivo del Cliente:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/ejecutivoCliente"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tipo de Balance:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/tipoBalance"/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Actividad Económica:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/actividadEconomica"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Cobertura:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/cobertura"/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">Estado:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/estado"/></fo:inline>
										</fo:block>
									   </fo:table-cell> 
									     <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt">Auditor:</fo:inline>
										</fo:block>
									   </fo:table-cell>
									     <fo:table-cell>
										<fo:block background-color="#F0F0F0">
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/auditor"/></fo:inline>
										</fo:block>
									   </fo:table-cell>
								</fo:table-row>
								<fo:table-row>
		                                                           <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Cifras en:</fo:inline>	
										</fo:block>
									   </fo:table-cell>  
									   <fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt"><xsl:value-of select="resumenBalance/EnvoltorioBalance/datosGenerales/tipoCifras"/></fo:inline>
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