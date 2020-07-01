<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
	<xsl:variable name="IMAGEEXT">gif</xsl:variable>
	<xsl:template match="puntosPrograma">
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
					COMPROBANTE 
					 (continuación)
					  - 
					 Página <fo:page-number/>
				</fo:block>
			</fo:static-content>
			<fo:flow flow-name="xsl-region-body" color="#4D6175" font-size="11pt" >
				<fo:block >
	                <xsl:template name="temp_tituloPrimas">
	                    <fo:block span="none" padding-before="2pt">
						   <fo:table table-layout="fixed" width="100%">
						       <fo:table-column column-width="proportional-column-width(100)" background-color="#FFFFFF"/>
	                           <fo:table-body>
	                                <fo:table-row>
	                                    <fo:table-cell font-size="10pt" border-style="solid" border-width="1pt" border-color="white" number-columns-spanned="3" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
	                                        <fo:block>
												<xsl:text>PROGRAMA EPUNTOS</xsl:text>
											</fo:block>
						                </fo:table-cell>
					                </fo:table-row>
									<fo:table-row>
									   <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="10pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
				                            <fo:block>
					                             <fo:leader leader-pattern="space" />
					                        </fo:block>
					                        <fo:block>
					                           <fo:inline font-weight="bold">Comprobante de Canje</fo:inline>
					                        </fo:block>
					                   </fo:table-cell>  
				                    </fo:table-row>
	                                <fo:table-row>
										<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="10pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
										  <fo:block>
										      <fo:leader leader-pattern="space" />
										  </fo:block>
										  <fo:block>
										      <fo:inline font-weight="bold">COMPROBANTE N°</fo:inline>
										  </fo:block>
										</fo:table-cell>
										<fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="10pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
										  <fo:block>
										      <fo:leader leader-pattern="space" />
										  </fo:block>
										  <fo:block>
										      <xsl:value-of select="puntosPrograma/numComprobante"/>
										  </fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</fo:block>
	                 </xsl:template>
	 
					<xsl:template name="temp_tituloDatosPrimas">
						<fo:block span="none" padding-before="6pt">
						</fo:block>
					</xsl:template>
	
					<xsl:template name="temp_datosPrimas">	
						<fo:block span="none" padding-before="6pt">
						   <fo:table table-layout="fixed" width="100%">
						       <fo:table-column column-width="proportional-column-width(50)" background-color="#FFFFFF"/>
						       <fo:table-column column-width="proportional-column-width(50)" background-color="#FFFFFF"/>
						       <fo:table-body>
	                                <xsl:for-each select="detalleCanje">
	                                    <fo:table-row>
	                                        <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
	                                            <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
	                                                <xsl:text>Tarjeta</xsl:text>
	                                            </fo:block>
	                                        </fo:table-cell>
	                                        <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="center">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text>Numero referencia Estado de Cuenta</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
	                                    </fo:table-row>
	                                    <fo:table-row>
                                           <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:value-of disable-output-escaping="no" select="tarjeta"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:value-of disable-output-escaping="no" select="numReferencia"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text>Fecha de Pago</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>    
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                     <xsl:text>Rubro</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>    
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:value-of disable-output-escaping="no" select="fechaCompra"/>
                                                </fo:block>
                                            </fo:table-cell>    
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                     <xsl:value-of disable-output-escaping="no" select="rubro"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text>Nombre Comercio</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text>Monto de la Compra</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>                                            
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:value-of disable-output-escaping="no" select="comercio"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:value-of disable-output-escaping="no" select="monto"/>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text>Monto a Canjear</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt" font-weight="bold">
                                                    <xsl:text></xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:value-of disable-output-escaping="no" select="pesosCanje"/>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white"  padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:text></xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" number-rows-spanned="1" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="start" text-align="start">
                                                <fo:block text-align="center" color="#0360A2" font-size="11.0pt">
                                                    <xsl:text></xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
					               </xsl:for-each>
						       </fo:table-body>
						   </fo:table>
	                    </fo:block>
	                    <fo:block>
					        <fo:table table-layout="fixed" width="100%">
                                <fo:table-column column-width="proportional-column-width(19)"/>
                                <fo:table-column column-width="proportional-column-width(62)"/>
                                <fo:table-column column-width="proportional-column-width(19)"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell>
					                       <fo:block/>
					                    </fo:table-cell>
					                    <fo:table-cell font-size="8pt" border-style="solid" border-width="1pt" border-color="white" height="190pt" text-align="center" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
					                        <fo:block text-align="left">
					                            <fo:external-graphic scaling="uniform" height="190pt" width="190pt">
					                                <xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="imgPath"/>/tarjetas/images/html/timbre_certificado_impresion.jpg')</xsl:attribute>
					                            </fo:external-graphic>
					                        </fo:block>
					                    </fo:table-cell>
					                    <fo:table-cell>
					                       <fo:block/>
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
