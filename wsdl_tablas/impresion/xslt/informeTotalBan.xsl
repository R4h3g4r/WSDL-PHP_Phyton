<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"></xsl:output>
	
	<xsl:template name="formatDate"> 
		<xsl:param name="dateTime" />
		<xsl:variable name="date" select="substring-before($dateTime, 'T')" /> 
		<xsl:variable name="year" select="substring-before($date, '-')" /> 
		<xsl:variable name="month" select="substring-before(substring-after($date, '-'), '-')" />
		<xsl:variable name="day" select="substring-after(substring-after($date, '-'), '-')" /> 
		<xsl:value-of select="concat($day, ' ', $month, ' ', $year)" />
	 </xsl:template>
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
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/nombreCliente"/></fo:inline>
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
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/ejecutivo"/></fo:inline>
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
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/idCliente"/></fo:inline>
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
											<fo:inline start-indent="4pt"><xsl:value-of select="resumenBalance/ImpresionBanPDF/datosGenerales/ejecutivoCliente"/></fo:inline>
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
					
<!-- ************************************************************************************ -->	
					
<!-- *********************************     ESTADO DE SITUACION       ******************** -->

<!-- ************************************************************************************ -->					
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
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_bco_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												<xsl:value-of select="bco_gen_num_fcu" /> 
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
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="bco_gen_num_mes" />
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
									<fo:table-cell>
										<fo:block background-color="#F2F2F2" font-size="8pt">
											<fo:inline font-weight="bold" color="#D8D8D8" start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
   								</fo:table-row>
<!-- ******************************************** ACTIVOS  ******************** -->
   								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">ACTIVOS</fo:inline>
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
											<fo:inline start-indent="4pt">Efectivos y depósitos en banco</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">										
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_efe_dep, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_efe_dep_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Operaciones con liquidación en curso</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ope_liq, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ope_liq_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Instrumentos para negociación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_neg, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_neg_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Contratos de retrocompra y préstamos de valores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ctr_rcp_pre_val, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ctr_rcp_pre_val_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Contratos de derivados financieros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ctr_der_fin, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ctr_der_fin_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Adeudado por bancos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ade_bco, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ade_bco_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Créditos y cuentas por cobrar a clientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_cre_cta_cob, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_cre_cta_cob_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Instrumentos de inversión disponible para la venta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_inv_dis_vta, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_inv_dis_vta_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Instrumentos de inversión hasta el vencimiento</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_inv_vct, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_inv_vct_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Inversiones en sociedades</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_inv_soc, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_inv_soc_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell text-align="left" border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Intangibles</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_int, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_int_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activo fijo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_acv_fjo, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_acv_fjo_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_cte_acv, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_cte_acv_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_dfr_acv, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_dfr_acv_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros activos</fo:inline>	
										</fo:block>
									</fo:table-cell>												  
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_acv, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_acv_p, "###.##")' /> 
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
											<fo:inline start-indent="4pt" font-weight="bold">TOTAL ACTIVOS</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block  font-weight="bold" >
												<xsl:value-of select='format-number(total_activos, "###,###")'/> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block font-weight="bold">
												<xsl:value-of select='format-number(total_activos_p, "###.##")' /> 
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						
						<fo:block>
							<fo:inline color="white">.</fo:inline>
						</fo:block>
   								
					
<!-- ******************************************** PASIVOS ******************** -->					
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
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">PASIVOS</fo:inline>
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
											<fo:inline start-indent="4pt">Depósito y otras obligaciones a la vista</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_dep_otr_obl_vis, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_dep_otr_obl_vis_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Operaciones con liquidación en curso</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ope_liq_cur, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ope_liq_cur_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Contratos de retrocompra y préstamos de valores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ctr_rcp_ptm_val, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ctr_rcp_ptm_val_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Depósitos y otras captaciones de plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_dep_cap_plz, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_dep_cap_plz_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Contratos de derivados financieros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_der_fin, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_der_fin_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Obligaciones con bancos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_obl_bco, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_obl_bco_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Instrumentos de deuda emitidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_dda_emi, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ins_dda_emi_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otras obligaciones financieras</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_obl_fin, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_obl_fin_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos corrientes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_cte_psv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_cte_psv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Impuestos diferidos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_dfr_psv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_dfr_psv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_prv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_prv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>								
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros pasivos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_psv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_psv_p, "###.##")'/>
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
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">TOTAL PASIVOS</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(total_pasivos, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(total_pasivos_p, "###.##")'/>
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
											<fo:inline font-weight="bold" start-indent="4pt">Patrimonio</fo:inline>
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
   								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">Atribuible a tenedores patrimoniales del banco</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_atr_ten_pat_bco, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_atr_ten_pat_bco_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Capital</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_cpt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_cpt_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Reservas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_rsv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_rsv_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cuentas de valoración</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_cta_val, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_cta_val_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">Utilidades retenidas</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_ret, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_ret_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidades retenidas de ejercicios anteriores</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_ret_eje_ant, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_ret_eje_ant_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad del ejercicio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_eje, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_eje_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Menos: Provisión para dividendos mínimos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_prv_div_min, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_prv_div_min_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Interés Minoritario</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_int_min, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_int_min_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid"  border-color="black" border="0.5pt">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">TOTAL PATRIMONIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each  select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_ptr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_ptr_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid"  border-color="black" border="0.5pt">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">TOTAL PASIVOS Y PATRIMONIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each  select="resumenBalance/ImpresionBanPDF/banEsPasivos/banEsPasivos_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_psv_ptr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="black" border="0.5pt">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_psv_ptr_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					
<!-- ************************************************************************************ -->	
					
<!-- *********************************     ESTADO DE RESULTADO       ******************** -->

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
   								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_bco_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												 <xsl:value-of select="bco_gen_num_fcu" /> 
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
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="bco_gen_num_mes" />
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
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">ESTADO DE RESULTADO</fo:inline>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Ingresos por intereses y reajustes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_int_rjt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_int_rjt_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos por intereses y reajustes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_gto_int_rjt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_gto_int_rjt_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Ingreso neto por intereses y reajustes</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_nto_int_rjt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_nto_int_rjt_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Ingresos por comisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_com, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_com_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>


								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos por comisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_gto_com, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_gto_com_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">Ingreso neto por comisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_nto_com, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_nto_com_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad neta de operaciones financieras</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_nta_ope_fin, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_nta_ope_fin_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Utilidad(pérdida) de cambio neta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_cbo_nta, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_cbo_nta_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros ingresos operacionales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_ing_ope, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_ing_ope_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">Total ingresos operacionales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_ing_opr_com, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_ing_opr_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones por riesgo de crédito</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_prv_rie_cre, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_prv_rie_cre_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">INGRESO OPERACIONAL NETO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_ope_nto, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ing_ope_nto_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Remuneraciones y gastos del personal</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_rem_gto_prn, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_rem_gto_prn_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Gastos de administración</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_gto_adm, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_gto_adm_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Depreciaciones y amortizaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_dpr_amt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_dpr_amt_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Deterioros</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_det, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_det_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Otros gastos operacionales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_gto_ope, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_otr_gto_ope_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">TOTAL GASTOS OPERACIONALES</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_gto_opr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_tot_gto_opr_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">RESULTADO OPERACIONAL</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_res_opr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_res_opr_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Resultado por inversiones en sociedades</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_res_inv_soc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_res_inv_soc_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt" font-weight="bold">Resultado antes de impuesto a la renta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_res_ant_imp_rnt, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_res_ant_imp_rnt_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">Impuesto a la renta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_rta, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_rta_p, "###.##")'/>
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
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline font-weight="bold" start-indent="4pt">UTILIDAD DEL EJERCICIO</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEstRes/banEstRes_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_eje, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_utl_eje_p, "###.##")'/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					
					
					
					
<!-- ************************************************************************************ -->	
					
<!-- *********************************     DATOS ADICIONALES         ******************** -->

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
   								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_bco_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												<xsl:value-of select="bco_gen_num_fcu" /> 
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
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="bco_gen_num_mes" />
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
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">DATOS ADICIONALES</fo:inline>
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

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0 - 30 días CLP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_des_bse_ajt_0_30_clp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_des_bse_ajt_0_30_clp_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0 - 90 días CLP</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_des_bse_ajt_0_90_clp, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_des_bse_ajt_0_90_clp_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0 - 90 días M/X</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_des_bse_ajt_0_90_mx, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_des_bse_ajt_0_90_mx_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Colocaciones antes de provisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_col_ate_prv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_col_ate_prv_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones sobre colocaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_prv_sbr_col, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_prv_sbr_col_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>	
								
								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">ERM Tasa Interés Libro de Negociación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_emr_tsa_int_lib_neg, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_emr_tsa_int_lib_neg_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>									

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">ERM Moneda Libro de Negociación</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_emr_mon_lib_neg, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_emr_mon_lib_neg_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">ERM Moneda Libro de Banca</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_emr_mon_lib_bca, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_emr_mon_lib_bca_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Exposición Corto Plazo al riesgo de Tasas de interés</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_exp_cto_plz_rie_tsa_in, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_exp_cto_plz_rie_tsa_in_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Margen Financiero de Corto Plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_mng_fin_cto_plz, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_mng_fin_cto_plz_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Exposición Largo Plazo al Riesgo de Tasas de interés</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_exp_lgo_plz_rie_tsa_in, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_exp_lgo_plz_rie_tsa_in_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Patrimonio Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_ptm_efe, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_ptm_efe_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos Ponderados por Riesgo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_acv_pon_rie, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_acv_pon_rie_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cartera Vencida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_crt_vda, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_crt_vda_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Colocaciones totales (Colocaciones Brutas)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_col_tot, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_col_tot_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Provisiones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_prv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_prv_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cartera Deteriorada</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_crt_det, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_crt_det_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Colocaciones Comerciales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_col_com, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_col_com_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row background-color="#EEEEEE">
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">UPA Básica</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_upa_bas, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_upa_bas_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">UPA Diluída</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banDatAdic/banDatAdic_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_upa_dil, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_dad_upa_dil_p, "###.##")' />
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

							</fo:table-body>
						</fo:table>
					


<!-- ************************************************************************************ -->	
					
<!-- *********************************     INDICADORES	            ******************** -->

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
   								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Balance - N° Balance</fo:inline>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="str_bco_gen_pdo_fcu" /> 
											</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
											<fo:block >
												<xsl:value-of select="bco_gen_num_fcu" /> 
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
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banEsActivos/banEsActivos_objecto">
										<fo:table-cell text-align="right">
											<fo:block>
												<xsl:value-of select="bco_gen_num_mes" />
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
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">INDICADORES</fo:inline>
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
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Liquidez</fo:inline>
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

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0-30 días/Capital Básico</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(bco_gen_ipt_rta, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0-90 días/Capital Básico</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_dsc_bse_90_cpt_bsc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Descalce Base Ajustada 0-30 días(M/X)/Capital Básico</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_dsc_bse_30_MX_cpt_bsc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">(Depósitos y Otras Obligaciones a la Vista)/Colocaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_dps_vst_clc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">(Depósitos y Otras Obligaciones a la Vista y a Plazo)/Colocaciones</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_dps_vst_plz_clc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">(Efectivo y dep. en Banco + operac. con Liquidación en Curso + Intrumentos de Inversión disponibles para la venta/Pasivo más Exigible</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_efc_opr_ins_psv_exg, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
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

								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Mercado</fo:inline>
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

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">ERM/(3*Capital Básico)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_erm_3_cpt_bsc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">X1/Margen Financiero de Corto Plazo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_x1_mrg_crt_plz, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">X2/Patrimonio Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_x2_ptr_efc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
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

								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Capital y Solvencia</fo:inline>
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

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Patrimonio Efectivo/(Activos Ponderados por Riesgo + ERM)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_ptr_efc_act_pnd, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Capital Básico/(Activos Ponderados por Riesgo + ERM)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_cpt_bsc_act_pnd, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
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

								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Calidad de la Cartera</fo:inline>
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

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cartera Vencida/Colocaciones Totales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_crt_vnc_clc_ttl, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Proviciones/Colocaciones Totales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_prv_clc_ttl, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cartera Deteriorada (C1+C2+C3+C4+D1+D2)/Colocaciones Comerciales Totales</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_crt_dtr_clc_cmr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
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

								<fo:table-row>
		                	       	<fo:table-cell>
										<fo:block background-color="#F2F2F2">
											<fo:inline font-weight="bold" start-indent="4pt">Rentabilidad y Productividad</fo:inline>
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

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Rentabilidad sobre Patrimonio</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_rnt_ptr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Rentabilidad sobre Activos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_rnt_act, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Margen Operacional Bruto/Activo Productivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_mob_ap, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Total Gastos Operacionales/Ingreso Operacional Neto</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_tgo_ion, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Margen Financiero/Margen Operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_mf_mo, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
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
   								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Depositos/(Pasivo + Patrimonio)</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_dps_psv_ptr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Colocaciones/Total de Activos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_clc_ta, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Activos Liquidos/Total de Activos</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(act_lqd_ta, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">LEVERAGE</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_lvr, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">LEVERAG Sobre Patrimonio Efectivo</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_lvr_pe, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Cartera en Mora y Vencida/Cartera Bruta</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_cmv_cv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Previsiones/Cartera en Mora y Vencida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_prv_cmv, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">Comisiones/Gasto Operacional</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_cms_go, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">UPA Básica</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_upa_bsc, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>

								<fo:table-row>
	                               	<fo:table-cell border-style="solid" border-color="#F2F2F2">
										<fo:block>
											<fo:inline start-indent="4pt">UPA Diluida</fo:inline>	
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="resumenBalance/ImpresionBanPDF/banIndicadores/banIndicadores_objecto">
										<fo:table-cell text-align="right" border-style="solid" border-color="#F2F2F2">
											<fo:block>
												<xsl:value-of select='format-number(ind_upa_dld, "###,###")' />
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block background-color="#FFFFFF">
												<fo:inline font-weight="bold" color="#F2F2F2" start-indent="4pt">.</fo:inline>
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