<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<!-- xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print"  -->
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosImpresionCuadratura">
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
							CUADRATURA DE SUCURSAL - DIA 1
							 (continuación)
							  - 
							 Página <fo:page-number/>
						</fo:block>
					</fo:static-content>
					
					
					<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
					<fo:block >
							
		
					<xsl:template name="temp_tituloPrincipal">
		
						<fo:block padding-before="2pt">
			
							<fo:table table-layout="fixed" width="100%">
								<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(80)" background-color="#FFFFFF"/>
								<fo:table-column column-width="proportional-column-width(10)" background-color="#FFFFFF"/>
								<fo:table-body>
									<fo:table-row>
									<fo:table-cell column-number="2" padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
										<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
										<xsl:text>CUADRATURA DE SUCURSAL - DIA 1</xsl:text>
										</fo:block>
									</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
		
						</fo:block>
						
					</xsl:template>	
		
					<xsl:template name="tempDatosEncabezado">
					<fo:block span="none" padding-before="6pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(30)" background-color="#f0f0f0" />
							<fo:table-column column-width="proportional-column-width(40)" background-color="#f0f0f0" />
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true" text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text disable-output-escaping="no">Sucursal</xsl:text>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="3" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="nombreSucursal"/>
									</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-after-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text disable-output-escaping="no">Fecha</xsl:text>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="3" text-align="center" display-align="before" border-top-style="solid" border-after-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" >
									<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="fecha"/>
									</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:template>
		
					<xsl:template name="tempDatosCuadraturaSucursal">
					<fo:block span="none" padding-before="6pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0" />
							<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0" />
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text disable-output-escaping="no"></xsl:text>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="3" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC">
									<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text>DEBE</xsl:text>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="4" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text disable-output-escaping="no">HABER</xsl:text>
									</fo:block>
									</fo:table-cell>
								</fo:table-row>
								
						<xsl:for-each select="campos/campo">
								
								<fo:table-row>
									<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="etiqueta"/>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="8pt">
									<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="debe"/>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="8pt">
									<fo:block white-space-collapse="true" text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="haber"/>
									</fo:block>
									</fo:table-cell>
								</fo:table-row>
						
						</xsl:for-each>
				
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:template>

					<xsl:template name="tempTotalesCuadraturaSucursal">
					<fo:block span="none" padding-before="6pt">
							<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-column column-width="proportional-column-width(30)"/>
							<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0" />
							<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0" />
							<fo:table-column column-width="proportional-column-width(15)"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text disable-output-escaping="no">TOTALES</xsl:text>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="8pt">
									<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="totalDebe"/>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="8pt">
									<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="totalHaber"/>
									</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell column-number="2" text-align="start" display-align="before" border-top-style="solid" border-after-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:text disable-output-escaping="no">DIFERENCIA</xsl:text>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-after-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="8pt">
									<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="diferenciaDebe"/>
									</fo:block>
									</fo:table-cell>
									<fo:table-cell column-number="4" text-align="right" display-align="before" border-top-style="solid" border-after-style="solid"  border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="8pt">
									<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
										<xsl:value-of disable-output-escaping="no" select="diferenciaHaber"/>
									</fo:block>
									</fo:table-cell>
								</fo:table-row>
				
							</fo:table-body>
						</fo:table>
					</fo:block>
					</xsl:template>

					<fo:block id="last-page"/>
							
					</fo:block>
					</fo:flow>
	
				</fo:page-sequence>
				

		</fo:root>
	</xsl:template>
</xsl:stylesheet>
