<?xml version="1.0" encoding="ISO-8859-1"?>
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
											<fo:external-graphic height="56pt" width="148pt" src="url( { $img } )"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt">
										<fo:block font-size="14pt"  text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">MOVIMIENTO DE  CAJA</fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
								<fo:table-row>
									<fo:table-cell padding="6pt">
										<fo:block font-size="10pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> Desde  </fo:inline><fo:inline  start-indent="4pt"><xsl:value-of select="resumen/desde"/> </fo:inline><fo:inline  font-weight="bold"  start-indent="4pt">al</fo:inline> <fo:inline  start-indent="4pt"> <xsl:value-of select="resumen/al"/> </fo:inline>
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
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumen/cliente"/> </fo:inline>
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
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumen/rut"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
							<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Direccion : </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumen/direccion"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>		
							
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Cod. Cartera: </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"><xsl:value-of select="resumen/cuenta_de_inversion"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								
								<fo:table-row>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" border="0.5pt solid black">
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="180pt"/>
							<fo:table-column column-width="70pt"/>
							<fo:table-column column-width="200pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Fecha Pago</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Tipo Movimiento</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Docto</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Detalle</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Total</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Saldo</fo:inline>
										</fo:block>
									</fo:table-cell>	
									
								</fo:table-row>	
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed">
							
							<fo:table-column column-width="100pt"/>
							<fo:table-column column-width="70pt"/>/>
							<fo:table-column column-width="60pt"/>
							<fo:table-column column-width="50pt"/>
							<fo:table-body>
								
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
									
								</fo:table-row>	
								
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">Referido a su cuenta</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline start-indent="4pt" font-weight="bold"><xsl:value-of select="resumen/referido_a_su_cuenta"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt">en moneda :</fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
											<fo:inline start-indent="4pt" font-weight="bold"><xsl:value-of select="resumen/en_moneda"/>  </fo:inline>
										</fo:block>
									</fo:table-cell>
					
								</fo:table-row>	
								
							</fo:table-body>
						</fo:table>
					</fo:block>
					
					<xsl:for-each select="NewDataSet">
						
					<fo:block font-size="8pt">
						<fo:table text-align="center" table-layout="fixed" >	
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="180pt"/>
							<fo:table-column column-width="70pt"/>
							<fo:table-column column-width="200pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-column column-width="80pt"/>
							<fo:table-body>
								<fo:table-row>
									
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"></fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="1pt">
										<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
											<fo:inline  font-weight="bold"  start-indent="4pt"> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>	
								<xsl:apply-templates/>								
							</fo:table-body>
						</fo:table>
					</fo:block>
						
					</xsl:for-each>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>	
	<xsl:template match="NewDataSet/Datos">
		<fo:table-row>
			
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="fecha_pago"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline start-indent="4pt"><xsl:value-of select="tipo_de_movimiento"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="center"  padding-top="2pt" padding-left="2pt">
					<fo:inline  start-indent="4pt"><xsl:value-of select="dcto"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="left"  padding-top="2pt" padding-left="2pt">
					<fo:inline    start-indent="4pt"><xsl:value-of select="detalle"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline   start-indent="4pt"><xsl:value-of select="total"/></fo:inline>
				</fo:block>
			</fo:table-cell>
			<fo:table-cell padding="1pt">
				<fo:block font-size="8pt" text-align="right"  padding-top="2pt" padding-left="2pt">
					<fo:inline  start-indent="4pt"><xsl:value-of select="saldo"/></fo:inline>
				</fo:block>
			</fo:table-cell>
		</fo:table-row>	
	</xsl:template>		
</xsl:stylesheet>
