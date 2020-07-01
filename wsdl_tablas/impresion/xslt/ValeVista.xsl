<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1">
    <xsl:decimal-format name="european" decimal-separator="," grouping-separator="." />

    <xsl:param name="firma" />
    <xsl:template match="raiz">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master margin-right="2.5cm" master-name="Letter" page-height="29.7cm" page-width="21.0cm" margin="0.8cm">
                    <fo:region-body />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="Letter">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:choose>
                        <xsl:when test="//movimientos">
							<fo:table>
							<fo:table-column/>
								<fo:table-body>
									<fo:table-row>
                                        <fo:table-cell>
                                            <fo:block  space-before="34mm" text-align="left" font-size="19pt"><xsl:value-of select="tituloValeVista"/></fo:block>
                                            <fo:block  space-before="1mm" text-align="left" font-size="19pt"><xsl:value-of select="tituloValeVista"/></fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
								</fo:table-body>
							</fo:table>							
							<fo:table>
								<fo:table-column/>								
								<fo:table-body>
									<fo:table-row>                                                          
                                        <fo:table-cell>
                                            <fo:block text-align="right" space-before="71mm" font-size="10pt">$ ***<xsl:value-of select="montoValeVista"/>***</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>	
                                    <fo:table-row>
                                        <fo:table-cell>
                                            <fo:block text-align="left" space-before="-1mm" font-size="15pt"><xsl:value-of select="valealavista"/></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>									
							<fo:table>
								<fo:table-column/>	
								<fo:table-column/>								
								<fo:table-body>									
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="left" space-before="5mm" font-size="9pt">
												N<xsl:value-of select="simbolo"/> 
												<fo:inline font-weight="bold">  <xsl:value-of select="numeroValeVista"/></fo:inline>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="left" space-before="1mm" font-size="9pt">
												<fo:table table-layout="fixed">
													<fo:table-column />
													<fo:table-column Column-width="6cm" />
													<fo:table-body>
														<fo:table-row>
															<fo:table-cell>
																<fo:block text-align="right" space-before="2mm" font-size="9pt">
																	<fo:inline font-weight="bold"><xsl:value-of select="cicloOperacion"/></fo:inline>
																</fo:block>
															</fo:table-cell>
															<fo:table-cell>
																<fo:block text-align="right" font-size="9pt" space-before="2mm"><xsl:value-of select="descripcionPlaza"/></fo:block>
															</fo:table-cell>
														</fo:table-row>
													</fo:table-body>
												</fo:table>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>									
								</fo:table-body>
							</fo:table>								
							<fo:table>
								<fo:table-column/>							
								<fo:table-body>									
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="right" space-before="-1mm" font-size="9pt"><xsl:value-of select="codigoOficina"/>
											</fo:block>
											<fo:block text-align="right" space-before="0mm" font-size="9pt">
                                                <fo:inline font-weight="bold"><xsl:value-of select="fechaDia"/> de <xsl:value-of select="fechaMes"/> de <xsl:value-of select="fechaAno"/></fo:inline>
                                            </fo:block>
											<fo:block text-align="left" space-before="1mm" font-size="9pt">
                                                Oficina :
                                                <fo:inline font-weight="bold"><xsl:value-of select="desOficina"/></fo:inline>
                                            </fo:block>
                                            <fo:block text-align="left" space-before="1mm" font-size="9pt">
                                                Depósito A
                                                <fo:inline font-weight="bold"><xsl:value-of select="nombreBeneficiario"/></fo:inline>
                                            </fo:block>
                                            <fo:block text-align="left" space-before="1mm" font-size="9pt">
                                                La cantidad de
                                                <fo:inline alignment-adjust="" font-weight="bold"><xsl:value-of select="montoEscrito1"/></fo:inline>                                                
                                            </fo:block>
											<fo:block text-align="left" space-before="0mm" font-size="8pt">                                                
                                                <xsl:value-of select="montoEscrito2"/>
                                            </fo:block>
										</fo:table-cell>
									</fo:table-row>									
								</fo:table-body>
							</fo:table>							
							<fo:table>							
								<fo:table-column />
								<fo:table-column />
								<fo:table-body>
									<fo:table-row>
                                        <fo:table-cell>
											<fo:block font-size="9pt" text-align="left" space-before="20mm">
											Tomado por:
                                                <fo:inline font-weight="bold" font-size="10pt">
                                                    <xsl:value-of select="nombreTomador"/>                                                   
                                                </fo:inline>
                                            </fo:block>
											<fo:block font-size="9pt" text-align="left" space-before="5mm">
                                                Documento: <fo:inline font-weight="bold" font-size="8pt"><xsl:value-of select="cobro"/></fo:inline>
                                            </fo:block>
                                            <fo:block text-align="left" space-before="5mm">
                                                <fo:inline font-size="9pt"><xsl:value-of select="pagadero"/></fo:inline>
                                            </fo:block>
                                        </fo:table-cell>
										<fo:table-cell font-size="8pt" border-width="1pt" height="47pt" text-align="rigth" padding-start="1pt" padding-end="1pt" padding-before="1pt" padding-after="1pt" display-align="center">
                                            <fo:block text-align="right">
                                                <fo:external-graphic space-before.optimum="1pt" space-after.optimum="1pt" height="30mm" width="40mm">
                                                    <xsl:attribute name="src">url('<xsl:value-of select="firma" /><xsl:text disable-output-escaping="yes">FirmaTempBanco.gif</xsl:text>')</xsl:attribute>
                                                </fo:external-graphic>
                                                <fo:block text-align="right" space-before="4mm">
                                                    <fo:inline font-size="8.5pt"><xsl:value-of select="pieFirma"/></fo:inline>
                                                </fo:block>
                                                <fo:block text-align="right" space-before="0.5mm">
                                                    <fo:inline font-size="8pt">Emisor: <xsl:value-of select="emisor"/></fo:inline>
                                                </fo:block>
												<fo:block text-align="right" space-before="0.5mm">
                                                    <fo:inline font-size="8pt">Supervisor: <xsl:value-of select="supervisor"/></fo:inline>
                                                </fo:block>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
								</fo:table-body>
							</fo:table>										
										
							<fo:table>							
								<fo:table-column />
								<fo:table-body>
									<fo:table-row>
                                        <fo:table-cell>
                                            <fo:block  space-before="51mm" text-align="left" font-size="15pt"><xsl:value-of select="tituloValeVista"/></fo:block>
                                            <fo:block  space-before="1mm" text-align="left" font-size="15pt"><xsl:value-of select="tituloValeVista"/></fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
								</fo:table-body>
							</fo:table>								
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:block text-align="center" border-style="solid" border-after-color="BLACK" padding="0.5mm">
                                <fo:inline font-weight="bold" font-size="8pt">
                                    <xsl:value-of select="mensajeError" />
                                </fo:inline>
                            </fo:block>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
