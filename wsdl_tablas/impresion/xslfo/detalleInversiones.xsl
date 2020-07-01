<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
	<xsl:param name="img"/>
	<xsl:template match="string">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="carta_landscape" page-height="8.5in" page-width="11.0in" margin-top="0.75in" margin-bottom="1.0in" margin-left="0.30in" margin-right="0.20in">
					<fo:region-body/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="carta_landscape" font-family="Times, Times New Roman">
				<fo:flow flow-name="xsl-region-body">
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="148pt"/>
							<fo:table-column column-width="504pt"/>
							<fo:table-column column-width="148pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="2pt" number-rows-spanned="2">
										<fo:block font-size="8pt" text-align="left">
											<fo:external-graphic height="56pt" width="148pt" src="url({$img})"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt">
										<fo:block font-size="14pt"  text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">DETALLE DE INVERSIONES</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>							
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="800pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="6pt">
										<fo:block font-size="10pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> A Fecha</fo:inline><fo:inline start-indent="4pt"><xsl:value-of select="resumen/a_fecha"/></fo:inline><fo:inline  font-weight="bold"  start-indent="4pt">  Moneda </fo:inline><fo:inline start-indent="4pt"><xsl:value-of select="resumen/moneda"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell padding="6pt">
										<fo:block font-size="10pt" text-align="center" color="white"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">.</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="700pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Cliente : </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumen/cliente"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">RUT : </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumen/rut"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Cuenta de Inversión : </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline start-indent="4pt"><xsl:value-of select="resumen/cuenta_inversion"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="10pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					<xsl:if test="NewDataSet1/Datos">
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							<fo:table-column column-width="90pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="75pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Instrumento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Pais</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nro Acciones</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Precio Compra</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Precio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Total</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Variación</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nro Acciones</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Promedio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total de compra</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Actual</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Actual</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nominal</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Acciones</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Garantía</fo:inline>
										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>	
								
							</fo:table-body>
						</fo:table>
					</fo:block>
									
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							
							<fo:table-column column-width="700pt"/>
			
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Acciones y Derechos Preferentes de Suscripción de Acciones</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							<fo:table-column column-width="90pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="75pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="100pt"/>
							<fo:table-body>
								<xsl:apply-templates select="NewDataSet1/Datos"/>
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:if>
					<xsl:if test="NewDataSet2/Datos">
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="30pt"/>							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Instrumento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="4pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Pais</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Descripción</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Moneda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nominales o</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tasa Compra</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tasa</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Variación</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nominales en</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Duration</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Final</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tasa compra</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Actual</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Actual</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nominal</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">R.Fija</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Patrimonio</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Garantía</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Par</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							
							<fo:table-column column-width="750pt"/>
							
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Renta Fija e Intermediación Financiera</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" >
							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="30pt"/>							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-body>
								<xsl:apply-templates select="NewDataSet2/Datos"/>
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:if>
					<xsl:if test="NewDataSet3/Datos">
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="115pt"/>
							<fo:table-column column-width="105pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tipo</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="4pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Contraparte/Instrumento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Dias</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tasa</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Moneda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nominal o</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Monto</fo:inline>
										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>	
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Operacion</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Transaccion</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Vencimiento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Al Vcto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Final</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Actual CLP</fo:inline>
										</fo:block>
									</fo:table-cell>
								
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							
							<fo:table-column column-width="750pt"/>
							
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Compra Con Pacto</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" >
							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="115pt"/>
							<fo:table-column column-width="105pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="45pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-body>
								<xsl:apply-templates select="NewDataSet3/Datos"/>
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:if>
					<xsl:if test="NewDataSet4/Datos">
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="95pt"/>
							<fo:table-column column-width="115pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
						
							
							<fo:table-body>
								<fo:table-row>	
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tipo</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="4pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Contraparte/Instrumento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Instrumento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">N° Acciones</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Dias</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tasa</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Moneda</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Nominal o</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Monto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Mercado</fo:inline>
										</fo:block>
									</fo:table-cell>
								
									
								</fo:table-row>	
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Operacion</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Transaccion</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Vencimiento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Al Vcto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Valor Final</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Actual CLP</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Instrumento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">de Riesgo</fo:inline>
										</fo:block>
									</fo:table-cell>
									
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							
							<fo:table-column column-width="750pt"/>
							
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Simultaneas de Compra</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" >
							
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="95pt"/>
							<fo:table-column column-width="115pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="55pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-body>
								<xsl:apply-templates select="NewDataSet4/Datos"/>
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:if>
					<xsl:if test="NewDataSet5/Datos">
					<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
												
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="115pt"/>
												<fo:table-column column-width="50pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="95pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
											
												
												<fo:table-body>
													<fo:table-row>	
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Instrumento</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="4pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Pais</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Administracion</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Moneda</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">N° Cuotas</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Valor</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Precio Cuota</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Valor Total</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Variacion</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">%</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Cuotas en</fo:inline>
															</fo:block>
														</fo:table-cell>
													
														
													</fo:table-row>	
													
													<fo:table-row>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Total de Compra</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Actual</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Actual</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Nominal</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">F. Mutuo</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Patrimonio</fo:inline>
															</fo:block>
														</fo:table-cell>
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Garantia</fo:inline>
															</fo:block>
														</fo:table-cell>
														
													</fo:table-row>	
												</fo:table-body>
											</fo:table>
										</fo:block>
										
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed">
												
												<fo:table-column column-width="750pt"/>
												
												<fo:table-body>
													<fo:table-row>
														
														<fo:table-cell padding="1pt">
															<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
																<fo:inline  font-weight="bold"  start-indent="4pt">Fondos Mutuos y Fondos de Inversion</fo:inline>
															</fo:block>
														</fo:table-cell>
													</fo:table-row>	
												</fo:table-body>
											</fo:table>
										</fo:block>
										
										<fo:block font-size="8pt">
											<fo:table text-align="center" table-layout="fixed" >
												
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="115pt"/>
												<fo:table-column column-width="50pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="95pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												<fo:table-column column-width="55pt"/>
												
												<fo:table-body>
													<xsl:apply-templates select="NewDataSet5/Datos"/>
												</fo:table-body>
											</fo:table>
					</fo:block>
					</xsl:if>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	

	<xsl:template match="NewDataSet1/Datos" >
		<fo:table-row>
			
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="instrumento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="pais"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="nro_acciones"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="precio_compra"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="4pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="valor"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="precio"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="valor_total"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="variacion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="acciones"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="patrimonio"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="nro_acciones_garantia"/></fo:inline>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>	
	</xsl:template>
	
	<xsl:template match="NewDataSet2/Datos" >
		<fo:table-row>
			
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="instrumento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="pais"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="descripcion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="moneda"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="nominales"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tasa_compra"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="valor_tasa"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tasa"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="valor"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="variacion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="renta_fija"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="patrimonio"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="nominales_garantia"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="duracion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline  start-indent="4pt"><xsl:value-of select="valor_par"/></fo:inline>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>	
	</xsl:template>	
	<xsl:template match="NewDataSet3/Datos" >
		<fo:table-row>
			
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tipo_operacion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="contraparteinstrumento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="fecha_transaccion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="fecha_vencimiento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="diasalvcto"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tasa"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="moneda"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="nominal"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="montoactualclp"/></fo:inline>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>	
	</xsl:template>	
	<xsl:template match="NewDataSet4/Datos" >
		<fo:table-row>
			
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tipo_operacion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="contraparteinstrumento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="instrumento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="n_acciones"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="fecha_transaccion"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="fecha_vencimiento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="diasalvcto"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tasa"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="nominal"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="montoactualclp"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="valor_mercado"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			
		</fo:table-row>	
	</xsl:template>	
	<xsl:template match="NewDataSet5/Datos" >
			<fo:table-row>
				
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="instrumento"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="pais"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="administrador"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="moneda"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="n_cuotas"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="valor_total_compra"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="precio_cuota_actual"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="valor_total_actual"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="variacion_nominal"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="f_mutuo"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="patrimonio"/></fo:inline>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding="1pt">
					<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
						<fo:inline start-indent="4pt"><xsl:value-of select="cuotas_garantia"/></fo:inline>
					</fo:block>
				</fo:table-cell>				
			</fo:table-row>	
	</xsl:template>	
	
</xsl:stylesheet>
