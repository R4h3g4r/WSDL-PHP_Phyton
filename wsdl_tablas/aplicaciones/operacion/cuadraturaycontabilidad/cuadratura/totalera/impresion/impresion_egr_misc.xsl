<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosEgreso">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
					<!--<fo:region-after region-name="regionPieResto" extent="1.5cm" precedence="true"/>-->
				</fo:simple-page-master>
				
				<fo:simple-page-master master-name="paginaMandato" page-height="287mm" page-width="200mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				
				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				
			</fo:layout-master-set>
			
				<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
					<fo:static-content flow-name="regionEncabezadoResto">
						<fo:block  text-align="right" font-size="11pt" color="#4D6175">
							<fo:page-number/>
						</fo:block>
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
						<fo:block >
							
							
							
							
<!-- 
	<fo:block>
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(19)"/>
			<fo:table-column column-width="proportional-column-width(62)"/>
			<fo:table-column column-width="proportional-column-width(19)"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="left">
							<fo:external-graphic scaling="uniform" height="69pt" width="174pt">
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell display-align="center">
						<fo:block color="#CC0000" font-size="20pt" text-align="center" font-weight="bold">
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="right">
							<fo:external-graphic  scaling="uniform" height="69pt" width="174px">
								<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</fo:block>	 -->						
	
	
	<xsl:template name="temp_tituloPrincipal">
		<fo:block padding-before="2pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-number="1" column-width="proportional-column-width(14)"/>
			<fo:table-column column-number="2" column-width="proportional-column-width(72)" background-color="#FFFFFF"/>
			<fo:table-column column-number="3" column-width="proportional-column-width(14)"/>
			<fo:table-body>
			<fo:table-row>
			
			
			<fo:table-cell column-number="2" padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
										<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
			<xsl:text>EGRESOS MISCELANEOS EN EFECTIVO</xsl:text>
					<xsl:if test="( esJefe = 'SI' )"> 						
							<xsl:text> - (Consolidado Oficina)</xsl:text>
					</xsl:if>
					<xsl:if test="( esJefe = 'NO' )"> 						
							<xsl:text> - Cajero</xsl:text>
					</xsl:if>
			</fo:block>
			</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="temp_datos_ejecutivo">
		<fo:block span="none" padding-before="4pt">	
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(14)"/>
					<fo:table-column column-width="proportional-column-width(18)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(18)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(18)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(18)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(14)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										Usuario UyP
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="3" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
									<xsl:value-of disable-output-escaping="no" select="usuarioUyP"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="4" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										Fecha
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="5" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
									<xsl:value-of disable-output-escaping="no" select="fecha"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell/>
						</fo:table-row>
					<xsl:if test="( esJefe = 'NO' )"> 		
						<fo:table-row>
							<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										Usuario Siebel
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="3" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
									<xsl:value-of disable-output-escaping="no" select="usuarioSiebel"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="4" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
								<fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										Numero Safe
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="5" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
								<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
									<xsl:value-of disable-output-escaping="no" select="numeroSafe"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell/>
						</fo:table-row>
					</xsl:if>
					</fo:table-body>
				</fo:table>

		</fo:block>
	</xsl:template>

	
	<xsl:template name="temp_tituloEgreso">
		<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-number="1" column-width="proportional-column-width(14)"/>
				<fo:table-column column-number="2" column-width="proportional-column-width(43)"/>
				<fo:table-column column-number="3" column-width="proportional-column-width(12)" background-color="#f0f0f0"/>
				<fo:table-column column-number="4" column-width="proportional-column-width(17)" background-color="#f0f0f0"/>
				<fo:table-column column-number="5" column-width="proportional-column-width(14)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text>Nº Doc.</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text>Monto</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosEgreso">
		<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-number="1" column-width="proportional-column-width(14)"/>
				<fo:table-column column-number="2" column-width="proportional-column-width(43)"/>
				<fo:table-column column-number="3" column-width="proportional-column-width(12)" background-color="#f0f0f0"/>
				<fo:table-column column-number="4" column-width="proportional-column-width(17)" background-color="#f0f0f0"/>
				<fo:table-column column-number="5" column-width="proportional-column-width(14)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Contabilidad</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadContabilidad"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoContabilidad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Canje Efectivo</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCanjeEfectivo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCanjeEfectivo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Pago Giro Electrónico</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadPagoGiro"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoPagoGiro"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">V.V. Bci fuera de línea</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadValeVistaBci"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoValeVistaBci"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">V.V. Nova (autorizados)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadValeVistaNova"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoValeVistaNova"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Compra monex por Meco</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCompraMonex"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCompraMonex"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Carga ATM (LMS a UCA)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCargaATM"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCargaATM"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Envio Remesas en Tráns.</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadEnvioRemesas"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoEnvioRemesas"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Traspasos Tesor. Integral</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadTraspaso"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoTraspaso"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-before="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-before="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-before="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Totales</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadTotal"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoTotal"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<xsl:if test="( esJefe = 'SI' )"> 		
						<fo:table-row>
							<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
								<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
									<xsl:text disable-output-escaping="no">Totales "Fin Dia Oficina" (Siebel) - Acumulador "Egresos Varios"</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
								<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
									<xsl:value-of disable-output-escaping="no" select="cantidadTotaleraSiebel"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
								<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
									<xsl:value-of disable-output-escaping="no" select="montoTotaleraSiebel"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell column-number="3" number-columns-spanned="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt">
								<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
									<xsl:if test="( cuadrado = 'NO' )"> 	
										<xsl:text disable-output-escaping="no">DESCUADRADO</xsl:text>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>

				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<!-- ********************************************************* TIMBRE **************************************************** -->
	
	<xsl:template name="temp_timbre">
	<fo:table table-layout="fixed" width="100%" padding-before = "60pt">
		<fo:table-column column-width="proportional-column-width(16)"/>
		<fo:table-column column-width="proportional-column-width(4)"/>
		<fo:table-column column-width="proportional-column-width(24)"/>
		<fo:table-column column-width="proportional-column-width(4)"/>
		<fo:table-column column-width="proportional-column-width(24)"/>
		<fo:table-column column-width="proportional-column-width(4)"/>
		<fo:table-column column-width="proportional-column-width(24)"/>
		<fo:table-body>
			
			<fo:table-row keep-with-next="always">
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
					<fo:block></fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
					<fo:block></fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
					<fo:block></fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
				<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" text-align="center" display-align="center">
					<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text>  VºBº y Timbre Tesorero</xsl:text>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
					<fo:block></fo:block>
				</fo:table-cell>
				<fo:table-cell padding-before="4pt" text-align="center" display-align="center">
					<fo:block>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
	</fo:table>
</xsl:template>
							<fo:block id="last-page"/>
						</fo:block>
					</fo:flow>
				</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
