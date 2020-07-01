<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
<xsl:variable name="IMAGEEXT">gif</xsl:variable>
<xsl:template match="DatosCanje">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>

				<fo:simple-page-master master-name="paginaPrimera" page-height="200mm" page-width="287mm" margin-left="1mm" margin-right="1mm" margin-top="5mm" margin-bottom="1mm">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="200mm" page-width="287mm" margin-left="1mm" margin-right="1mm" margin-top="10mm" margin-bottom="1mm">
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
			
	<xsl:template name="temp_tituloPrincipal">
		<fo:block padding-before="0pt">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
			<fo:table-body>
			<fo:table-row>
			<fo:table-cell padding="2.0pt" text-align="start" border-style="solid" display-align="before" border-width="1.0pt" border-color="#000000" background-color="#336699" >
			<fo:block text-align="center" color="#FFFFFF" font-size="12.0pt" font-weight="bold">
			<xsl:text>VARIOS DE CANJE Y LIBERACIÓN DEL SOPORTE OFICINA</xsl:text> 
					<xsl:if test="( esJefe = 'SI' )"> 						
						<xsl:text> - (CONSOLIDADO)</xsl:text>
					</xsl:if>
					<xsl:if test="( esJefe = 'NO' )"> 						
						<xsl:text> - Cajero </xsl:text>
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
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(20)" background-color="#f0f0f0"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
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

	
	<xsl:template name="temp_titulosCanje">
		<fo:block span="none" padding-before="6pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-number="1" column-width="proportional-column-width(18)"/>
				<fo:table-column column-number="2" column-width="proportional-column-width(7)" background-color="#f0f0f0"/>
				<fo:table-column column-number="3" column-width="proportional-column-width(12)" background-color="#f0f0f0"/>
				<fo:table-column column-number="4" column-width="proportional-column-width(4)"/>
				<fo:table-column column-number="5" column-width="proportional-column-width(35)"/>
				<fo:table-column column-number="6" column-width="proportional-column-width(12)"/>
				<fo:table-column column-number="7" column-width="proportional-column-width(12)"/>

				<fo:table-body>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">VARIOS NO ASENTADO</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text>Cant.</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text>Monto</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="4" text-align="start" display-align="before"  border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell number-columns-spanned="3" column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text>RESUMEN DE CANJE Y SOP. OFICINA</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="temp_datosCanje">
		<fo:block span="none" padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-number="1" column-width="proportional-column-width(18)"/>
				<fo:table-column column-number="2" column-width="proportional-column-width(7)"/>
				<fo:table-column column-number="3" column-width="proportional-column-width(12)"/>
				<fo:table-column column-number="4" column-width="proportional-column-width(4)"/>
				<fo:table-column column-number="5" column-width="proportional-column-width(35)"/>
				<fo:table-column column-number="6" column-width="proportional-column-width(12)"/>
				<fo:table-column column-number="7" column-width="proportional-column-width(12)"/>

				<fo:table-body>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Créditos Hipotecarios</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCreditosHipotecarios"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCreditosHipotecarios"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Créditos</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCreditos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCreditos"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="6" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Debe</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Haber</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Comisión</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadComision"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoComision"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Siebel:Totales Finales Documentos" - Totales</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="debeFinDia"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="haberFinDia"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Facturas</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadFactura"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoFactura"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Safe: Totales 9656 - Acumuladores 20 al 25</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no">-----------</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="haberAcumulador"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Cobranzas</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCobranza"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCobranza"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">SubTotal</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="debeSubTotalUno"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="haberSubTotalUno"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">DAP</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadDAP"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoDAP"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">VISA</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadVisa"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoVisa"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">CHEQUES (Total Cargos)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoTotalCargos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no">-----------</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">(704 por Siebel)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadSiebel"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoSiebel"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">VARIOS NO ASENTADO (SubTotal 2)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="center" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:text disable-output-escaping="no">-----------</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoSubTotalDos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">CHEQUES S.OFIC.LIBERADO (suma cheques)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="debeSumaCheques"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="center" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">-----------</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">DEPOSITOS S.OFIC.LIBERADOS (suma depositos)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="center" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">-----------</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="haberSumaDepositos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">SubTotal (1)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadSubTotalUno"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoSubTotalUno"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">SubTotal</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="debeSubTotalDos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="haberSubTotalDos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
<!-- 					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="10pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
	-->				
					<fo:table-row>


						<fo:table-cell column-number="5" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">TOTAL CUADRATURA</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="6" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="debeCuadratura"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="7" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="haberCuadratura"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">VARIOS NO</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Cant</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Monto</xsl:text>
							</fo:block>
						</fo:table-cell>
						<xsl:if test="( cuadrado = 'NO' )"> 		
								<fo:table-cell column-number="6" number-columns-spanned="2" text-align="center" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" background-color="#f0f0f0">
									<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt" font-weight="bold">
										<xsl:text disable-output-escaping="no">DESCUADRADO</xsl:text>
									</fo:block>
								</fo:table-cell>
						</xsl:if>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Contabilidad</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadContabilidad"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoContabilidad"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">(704 por Safe)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadSafe"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoSafe"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Pago INP</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadPagoINP"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoPagoINP"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Crédito CTBL</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadCreditoCTBL"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoCreditoCTBL"/>
							</fo:block>
						</fo:table-cell>
				
						<!-- Texto para timbre -->
						<fo:table-cell column-number="5" padding-before="4pt" text-align="center" display-align="center">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
							__________________________
							</fo:block>
						</fo:table-cell>
				
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Otros Abonos</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadOtrosAbonos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoOtrosAbonos"/>
							</fo:block>
						</fo:table-cell>
						
						<!-- Texto para timbre -->
						<fo:table-cell column-number="5" text-align="center" display-align="center">
							<fo:block white-space-collapse="true"  text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
										<xsl:text>  VºBº y Timbre Tesorero</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">SubTotal (2)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadSubTotalDos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoSubTotalDos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"></xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Total Abonos (1+2)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadTotalAbonos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoTotalAbonos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no"> </xsl:text>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">CHEQUES</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Cant</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="start" display-align="before" border-style="solid" font-weight="bold" border-width="0.1pt" border-color="#DCDCDC" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Monto</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Cheques Canje</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadChequesCanje"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoChequesCanje"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="11.0pt" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Otros Cargos (no cheques)</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadOtrosCargos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-top-style="solid" border-left-style="solid" border-right-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoOtrosCargos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell column-number="1" text-align="start" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-left="8pt" padding-right="8pt">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt" padding-after="2pt">
								<xsl:text disable-output-escaping="no">Total Cargos</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="2" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="cantidadTotalCargos"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell column-number="3" text-align="right" display-align="before" border-style="solid" border-width="0.1pt" border-color="#DCDCDC" padding-right="4pt" background-color="#f0f0f0">
							<fo:block white-space-collapse="true"  text-align="right" color="#0360A2" font-size="11.0pt" font-weight="bold" padding-before="4pt">
								<xsl:value-of disable-output-escaping="no" select="montoTotalCargos"/>
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
