<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"></xsl:output>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta" page-height="11.0in" page-width="8.5in" margin-top="0.75in" margin-bottom="1.25in" margin-left="0.5in" margin-right="0.5in">
					<fo:region-body></fo:region-body>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:setLocale value="es_CL"></fo:setLocale>
			<fo:page-sequence master-reference="carta" font-family="Arial, Helvetica, sans-serif">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">
						<fo:table table-layout="fixed" column-width="6.5in" border="2">
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
						<fo:table-column column-width="550pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell>
										<fo:block background-color="#D8D8D8">
											<fo:inline font-weight="bold" start-indent="4pt">DATOS GENERALES</fo:inline>
										</fo:block>
								   </fo:table-cell>
   								</fo:table-row>
							</fo:table-body>
					</fo:table>
					</fo:block>
					<fo:block font-size="7pt">
						<fo:table table-layout="fixed" column-width="6.5in">	
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="150pt"/>
							<fo:table-column column-width="20pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="150pt"/>
							<fo:table-body>
								<fo:table-row>
		                	        <fo:table-cell>
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell>
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
								<fo:table-row>
		                	        <fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Nombre Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/nombreCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									<fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Ejecutivo:</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/ejecutivo"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">IdC Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>  
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/idCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
									
									<fo:table-cell text-align="right">
										<fo:block>
											<fo:inline start-indent="4pt" color="white">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt">Ejecutivo del Cliente:</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="left">
										<fo:block>
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionPDF/datosGenerales/ejecutivoCliente"/></fo:inline>
										</fo:block>
									</fo:table-cell> 
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="7pt">
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
					<fo:block font-size="6pt">
						<fo:table text-align="left" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												<xsl:value-of select="gen_num_fcu" /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="gen_num_mes" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right">
												<fo:inline  start-indent="4pt">%</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" start-indent="4pt">Activos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
<!-- ************************************************************************************ -->	
					
<!-- *********************************     ACTIVOS CORRIENTES        ******************** -->

<!-- ************************************************************************************ -->

   								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Activos Corrientes</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
 								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Efectivo y Equivalentes al Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_dsp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_dsp_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros activos financieros corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_val_neg, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_val_neg_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros Activos No Financieros, Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_act_nfin, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_act_nfin_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Deudores comerciales y otras cuentas por cobrar corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_deu_com_cpc_cor, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_deu_com_cpc_cor_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas por Cobrar a Entidades Relacionadas, Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_cbr_erl_ctp, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_cbr_erl_ctp_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Inventarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_inv, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_inv_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos biológicos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_bio_cor, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_bio_cor_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos por impuesto corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_ipt_rpa, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_ipt_rpa_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_cir_1, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_cir_1_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_cir_2, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_cir_2_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
																
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_cir_3, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_cir_3_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Total de activos corrientes distintos de los activos o grupos de 
											activos para su disposición clasificados como mantenidos para la venta o como mantenidos 
											para distribuir a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_tot_act_cor, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_tot_act_cor_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos no corrientes o grupos de activos para su 
											disposición clasificados como mantenidos para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_ncor_man_vta, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_ncor_man_vta_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row border-width="1pt" border-style="solid" border-color="#F2F2F2">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos no corrientes o grupos de activos para su 
											disposición clasificados como mantenidos para distribuir a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_ncor_dis_prop, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_ncor_dis_prop_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos no corrientes o grupos de activos para su 
											disposición clasificados como mantenidos para la venta o como mantenidos para 
											distribuir a los propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_ncor_man_vta_dis_prop, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_ncor_man_vta_dis_prop_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Total Activos Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold" >
												<xsl:value-of select='format-number(gen_tot_acv_cir, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold">
												<xsl:value-of select='format-number(gen_tot_acv_cir_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>

<!-- ******************************************** ACTIVOS NO CORRIENTES ******************** -->
   								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Activos No Corrientes</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
 								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Inversiones en dependientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_inv_dep, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_inv_dep_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros activos financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_act_fin_ncor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_act_fin_ncor_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros activos no financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_act_nfin_ncor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_act_nfin_ncor_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Derechos por cobrar no corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_der_pcob_ncor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_der_pcob_ncor_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas por Cobrar a Entidades Relacionadas, No Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_cbr_erl_lgp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_cbr_erl_lgp_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Inversiones contabilizadas utilizando el método de la participación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_inv_con, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_inv_con_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos intangibles distintos de la plusvalía</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_itg, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_itg_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Plusvalía</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_men_val_inv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_men_val_inv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Propiedades, Planta y Equipo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_maq_eqp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_maq_eqp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos biológicos, no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_bio_ncor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_bio_ncor_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Propiedad de inversión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_prop_inv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_prop_inv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos por impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_imp_dif, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_act_imp_dif_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_lgp_1, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_lgp_1_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_lgp_2, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_lgp_2_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_lgp_3, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_acv_lgp_3_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold" >
											<fo:inline start-indent="4pt">Total Activos No Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" >
												<xsl:value-of select='format-number(gen_tot_otr_acv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold" >
												<xsl:value-of select='format-number(gen_tot_otr_acv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold">
											<fo:inline start-indent="4pt">TOTAL ACTIVOS</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_acv, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_acv_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						  					

<!-- ************************************************************************************ -->	
					
<!-- *********************************       PASIVOS		         ******************** -->

<!-- ************************************************************************************ -->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-body>
							
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												<xsl:value-of select="gen_num_fcu" /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="gen_num_mes" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right">
												<fo:inline  start-indent="4pt">%</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" start-indent="4pt">Pasivos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ******************************************** PASIVOS CORRIENTES ******************** -->
   								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Pasivos Corrientes</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros pasivos financieros corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_pas_fin_cor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_pas_fin_cor_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas por pagar comerciales y otras cuentas por pagar</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_cpp_com_otr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_cpp_com_otr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas por pagar a Entidades Relacionadas, Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_pag_erl_ctp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_pag_erl_ctp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otras provisiones a corto plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_prov_cp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_prov_cp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivos por Impuestos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_iar_psv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_iar_psv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones corrientes por beneficios a los empleados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_prov_cor_ben_emp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_prov_cor_ben_emp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros pasivos no financieros corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_pas_nfin_cor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_pas_nfin_cor_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_cir_1, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_cir_1_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_cir_2, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_cir_2_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_cir_3, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_cir_3_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Total de pasivos corrientes distintos de los pasivos 
											incluidos en grupos de activos para su disposición clasificados como mantenidos para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_tot_pas_cor, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_tot_pas_cor_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivos incluidos en grupos de activos para su 
											disposición clasificados como mantenidos para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_pas_mnt_vta, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_pas_mnt_vta_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold">
											<fo:inline start-indent="4pt">Total Pasivos Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold">
												<xsl:value-of select='format-number(gen_tot_psv_cir, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold">
												<xsl:value-of select='format-number(gen_tot_psv_cir_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

<!-- ******************************************** PASIVOS NO CORRIENTES ******************** -->

   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Pasivos No Corrientes</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros pasivos financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_obl_bf, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_obl_bf_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivos no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_pas_no_cte, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_pas_no_cte_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas por Pagar a Entidades Relacionadas, no corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_pag_erl_lgp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_pag_erl_lgp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otras provisiones a largo plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_prov_lp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_prov_lp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivo por impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_ipt_dfr_psv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_ipt_dfr_psv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones no corrientes por beneficios a los empleados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_prv_no_crt_ben_emp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_prv_no_crt_ben_emp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros pasivos no financieros no corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_no_fin_no_crt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_no_fin_no_crt_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_lgp_1, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_lgp_1_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_lgp_2, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cca_psv_lgp_2_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">*</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_pas_ncor_op, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_pas_ncor_op_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Total Pasivos No Corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_psv_lgp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_psv_lgp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Total Pasivos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_psv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_psv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ******************************************** PATRIMONIO ******************** -->
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Capital emitido</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_cpi_pag, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_cpi_pag_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Ganancias (pérdidas) acumuladas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_psv_res_ejr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_psv_res_ejr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Primas de emisión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_sbp_vta_acc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_sbp_vta_acc_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Acciones propias en cartera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_acc_prop_car, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_acc_prop_car_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otras participaciones en el patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_par_pat, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_par_pat_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otras reservas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_res, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_otr_res_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Patrimonio atribuible a los propietarios de la controladora</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_ptr_prp_ctr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(dai_ptr_prp_ctr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Participaciones no controladoras</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_int_men_res, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_int_men_res_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Total Patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_ptm, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(gen_tot_ptm_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block >
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell  border-style="solid" border-color="black" border="0.5pt">
										<fo:block font-weight="bold">
											<fo:inline start-indent="4pt">TOTAL PASIVOS Y PATRIMONIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(dai_tot_pat_pas, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(dai_tot_pat_pas_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   						</fo:table-body>
   					</fo:table>

<!-- ************************************************************************************ -->	
					
<!-- *********************************       ESTADO DE RESULTADO     ******************** -->

<!-- ************************************************************************************ -->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="22pt"/>
							<fo:table-body>
							
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												<xsl:value-of select="gen_num_fcu" /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline font-weight="bold"  start-indent="4pt">Meses - %</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaPasivos/genericaPasivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="gen_num_mes" />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right">
												<fo:inline  start-indent="4pt">%</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Estado de Resultado</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Ingresos explotación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ing_exp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ing_exp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Costos explotación (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cst_exp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(cst_exp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Depreciación (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_dpn, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_dpn_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Margen explotación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(mrg_exp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(mrg_exp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos de administración y ventas (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gst_adm, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gst_adm_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Resultado Operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rsl_opr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rsl_opr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Ingresos financieros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(gen_ing_fin, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rgen_ing_fin_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad inversiones emp.relacionadas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(erf_par_gan, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(erf_par_gan_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros ingresos fuera de explotación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(otr_ing, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(otr_ing_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pérdida inversión emp. Relacionadas (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(prd_emp_rlc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(prd_emp_rlc_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros egresos fuera de explotación (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(otr_egr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(otr_egr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Resultado no operacionals</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rsl_no_opr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rsl_no_opr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Resultado antes impuesto a la renta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rsl_ant_imp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(rsl_ant_imp_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Impuesto a la renta (menos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(imp_gnc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(imp_gnc_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad (pérdida) consolidada</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(utl, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(utl_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Interés minoritario</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(erf_gan_par_con, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(erf_gan_par_con_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad (pérdida) líquida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(utl_lqd, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(utl_lqd_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Amortización mayor valor inversiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(amt_myr_vlr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(amt_myr_vlr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad (pérdida) ejercicio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaER/genericaER_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(utl_ejr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(utl_ejr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>

   						</fo:table-body>
   					</fo:table>
   					

<!-- ************************************************************************************ -->	
					
<!-- *********************************        DATOS ADICIONALES      ******************** -->

<!-- ************************************************************************************ -->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-body>
							
								<fo:table-row >
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row >
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
   								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_gen_pdo_fcu" /> - <xsl:value-of select="gen_num_fcu" /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>							
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ***************************************** DATOS ADICIONALES ESTADO SITUACION************************************* -->
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales de Estado de Situacion Financiera Clasificado</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
 								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Deudores Varios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_deu_var, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Documentos por Cobrar</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_doc_cbr, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Obl. c/Bcos. e Ins. Finan. Porción LP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_obl_bf_lgp, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Obl. c/Público (Efec. de Comercio) Porción Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_obl_pub, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Obl. c/Público (Bonos) Porción Corriente</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_obl_pub_ctp, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Obl. Largo Plazo con Vcto. 1 Año</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_obl_lgp_ano, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Acreedores Varios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_acr_var, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Obligaciones Leasing CP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_obl_lea_ctp, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								

								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ***************************************** DATOS ADICIONALES ESTADO RESULTADO************************************* -->
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales de Estados de Resultados</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>   								
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Depreciación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_dep, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Amortización de Intangibles</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_amt_itg, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos Financieros Capitalizados en el Ejercito</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_gto_fin_cap_eje, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros conceptos que no son flujo y que pudieran estar en el 
												resultado operacional distintos a la  depreciación y amortización de intangibles</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_otr_cpt, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Reversión de pérdidas por deterioro de valor 
												(pérdidas por deterioro de valor) reconocidas en el resultado del periodo (***)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_rev_per, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ***************************************** DATOS ADICIONALES PATRIMONIO************************************* -->
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales de Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>   								
   								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Disminución) por Cambios en Políticas Contables</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_cbo_pol_con, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Disminución) por Correcciones de Errores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_crr_err, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otro Resultado Integral, Incremento (Disminución)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_otr_res_int, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Emisión de Patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_emi_ptm, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Dividendos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_div, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Disminución) por Otras Aportaciones de los Propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_otr_apo, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Disminución (Incremento) por Otras Distribuciones a los Propietarios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_otr_dis, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Disminución) por Transferencias y Otros Cambios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_tra, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Disminución) por Transacciones de Acciones en Cartera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_trn_acc, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Disminución) por Cambios en la Participación 
											de Subsidiarias que no Impliquen Pérdida de Control</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_cbo_par, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								

								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ***************************************** DATOS ADICIONALES ACTIVOS FIJOS ************************************* -->
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Datos Adicionales Activos Fijos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>

   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Adquisiciones Mediante Combinaciones de Negocios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_adq_cmb_neg, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Desapropiaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_des, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Transferencias a (desde) Activos No Corrientes y 
											Grupos en Desapropiación Mantenidos para la Venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_trf_acv, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Transferencia (desde) Propiedades de Inversión</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_trf_prp_inv, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Desapropiaciones mediante Enajenación de Negocios</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_des_ena_neg, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Retiros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_ret, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Decremento) por Revaluación Reconocido en Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_rev_ptm_net, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pérdida por Deteriodo Reconocida en el Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_per_ptm_net, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Reversiones de Deterioro de Valor Reconocidas en el Patrimonio Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_rev_rec_ptm_net, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Decremento)por Revaluación Reconocido en el Estado de Resultados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_rev_est_res, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pérdida (reversión) por Deterioro de propiedad plantas y equipos reconocidas en el Estado de Resultados</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_per_pla_equ, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								
   								
   								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Incremento (Decremento) en el Cambio de Moneda Extranjera</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_inc_cbo_mon_ext, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>
   								
   								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros Incrementos (Decrementos)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaDatosAdicionales/genericaDatosAdicionales_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(oda_otr_inc, "###,###")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
   								</fo:table-row>   								
							</fo:table-body>
						</fo:table>
			
<!-- ************************************************************************************ -->	
					
<!-- *********************************       INDICADORES		      ******************** -->

<!-- ************************************************************************************ -->

					<fo:table text-align="left" break-before="page" table-layout="fixed" column-width="6.5in">
							<fo:table-column column-width="200pt" />
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="10pt"/>
							<fo:table-body>
							

								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaActivos/genericaActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_gen_pdo_fcu" /> - <xsl:value-of select="gen_num_fcu" /> 
											</fo:block>
										</fo:table-cell>
		                	       		<fo:table-cell>
											<fo:block>
												<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>							
								
								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline  color="white"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								
								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" start-indent="4pt">Indicadores</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="7pt">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ***************************************** INDICADORES LIQUIDEZ************************************* 	-->
   								<fo:table-row>
		                	    	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Indicadores de Liquidez</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
	   							</fo:table-row>					
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Liquidez Corriente</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_lqd_cte, "###,###.##")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								   							
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Liquidez Ácida</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_lqd_aci, "###,###.##")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
   								
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Permanencia de Inventarios</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_prm_inv, "#")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Ms</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Permanencia de Créditos</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_prm_crd, "#")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Ms</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Permanencia de Cuentas por Pagar</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_prm_cts_pgr, "#")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Ms</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
<!-- ***************************************** COBERTURA CARGA FINANCIERA************************************* -->

								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
		                	    	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Cobertura Carga Financiera</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
	   							</fo:table-row>					
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Carga Financiera 1</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_crg_fnc1, "#")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Añ</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	   							
	   							
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Con intereses capitalizados 1</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_int_cpt1, "###,###.##")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	   							
	   							
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Carga Financiera 2</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_crg_fnc2, "###,###.##")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
								
	   							<fo:table-row>
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Con Interes Capitalizados 2</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_int_cpt2, "###,###.##")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">Vs</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		                        	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Flujo de Caja Disponible Para el Servicio de la Deuda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(flj_cja_dsp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
											<fo:block>
												<fo:inline start-indent="4pt">M$</fo:inline>	
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
<!-- ***************************************** INDICADORES RENTABILIDAD Y GENRACION************************************* -->

								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
		                	    	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Indicadores de Rentabilidad y Generación</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
	   							</fo:table-row>				
	   								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ebitda, "#")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Añ</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	  
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad Operacional/Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_opr_vnt, "##.##")'/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad/Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_utl_vnt, "##.##")'/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	  
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad/Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_utl_ptr, "##.##")'/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>									
									</xsl:for-each>	
								</fo:table-row>
								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad/Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_utl_ptr, "##.##")'/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad Antes CM/Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_utl_ant_CM_vnt, "##.##")'/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad Antes CM/Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_utl_ant_CM_ptr, "##.##")'/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">%</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
<!-- ***************************************** INDICADORES ENDEUDAMIENTO ************************************* -->

								<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
		                	    	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Endeudamiento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
	   							</fo:table-row>				
	   								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Leverage</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_lvr, "###,###.##")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Deuda Financiera/EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_dda_fnc_ebt, "###,###.##")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Deuda Financiera Neta/EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_dda_fnc_nta_ebt, "###,###.##")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   								
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivo Exigible/EBITDA</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_psv_exg_ebt, "#")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Añ</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cobertura del Servicio de la Deuda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ind_cbr_dda, "###,###.##")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">Vs</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row >
		                	       	<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<fo:inline color="white" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
   								<fo:table-row>
		                	    	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Otros</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
	   							</fo:table-row>		
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Patrimonio Neto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(ptr_nto, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivo Exigible</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(psv_exg, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Capital de Trabajo</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(cpt_trb, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos No Corrientes Disponibles Para la Venta</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(act_no_cte_dsp_vnt, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pasivos No Corrientes Disponibles Para la Venta</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(psv_no_cte_dsp_vta, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Costo de Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(cst_vts, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Depreciación</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(dpr, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Amortización de Intangibles</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(amr_int, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>	   							
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Pérdidas por Deterioro (Reversiones), Total, Neto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(prd_dtr, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row>
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos Administración y Ventas</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(gst_adm_vts, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							<fo:table-row background-color="#EEEEEE">
		        	               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad Operacional</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionPDF/genericaIndicadoresGen/genericaIndicadoresGen_objecto">
									<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<xsl:value-of select='format-number(utl_opr, "###,###")' />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell text-align="right"  border-style="solid" border-color="#F2F2F2" border="0.5pt">
										<fo:block>
											<fo:inline start-indent="4pt">M$</fo:inline>	
										</fo:block>
									</fo:table-cell>
									</xsl:for-each>
	   							</fo:table-row>
	   							
	   							
				</fo:table-body>
			</fo:table>
   					
		</fo:block>
		</fo:flow>
		</fo:page-sequence>
		</fo:root>
	</xsl:template>

</xsl:stylesheet>
