<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:param name="imglogo"/>
    <xsl:param name="img1"/>
    <xsl:param name="img2"/>
    <xsl:param name="img4"/>
    <xsl:param name="img5"/>	
    <xsl:param name="img3"/>
    
    <xsl:decimal-format name="euro" decimal-separator="," grouping-separator="."/>
    <xsl:template match="FondosMutuos/PdfFondoMutuoForm">
        <fo:root>
            <xsl:copy-of select="$fo:layout-master-set" />
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-family="Times">
                        <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                            <fo:table-column column-width="proportional-column-width(100)" />
                            <fo:table-body>
                                <fo:table-row background-color="#e6e6e6">
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="#e6e6e6" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:inline font-size="16px" font-weight="bold">Comprobante de inversión de Fondos Mutuos</fo:inline>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell border-style="solid" border-width="1pt" border-color="#e6e6e6" height="162pt" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                        <fo:block>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="421pt" />
                                                <fo:table-column column-width="85pt" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" height="35pt" width="381pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                            <fo:block>
                                                                <fo:table width="20%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column column-width="108pt" />
                                                                    <fo:table-column column-width="proportional-column-width(100)" />
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" text-align="right" width="108pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Cliente :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="nombreCliente"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row display-align="before">
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" text-align="right" width="108pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">RUT : </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" width="442pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="rutCliente"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row display-align="before">
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" text-align="right" width="108pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Fecha / Hora : </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" width="442pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fechaComprobante"/>
                                                                                    </fo:inline>                                                                                            
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="before" height="35pt" text-align="left" width="125pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt">
                                                            <fo:block>
                                                                <fo:external-graphic content-width="125px" space-before.optimum="4pt" space-after.optimum="4pt" src="url( {$imglogo} )"/>                                                                    
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="140pt" />
                                                <fo:table-column column-width="proportional-column-width(100)" />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="140pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                            <fo:block>
                                                                <fo:inline font-size="14px" font-weight="bold">COMPROBANTE N° </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="center" width="100%" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                            <fo:block>                                                                
                                                                <fo:inline color="#009900" font-size="14px">
                                                                    <xsl:value-of select="numeroComprobante"/>
                                                                </fo:inline>                                                                        
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
                                            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                <fo:table-column column-width="350pt" />
                                                <fo:table-column />
                                                <fo:table-body>
                                                    <fo:table-row>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" width="350pt" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                            <fo:block>
                                                                <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                                                                    <fo:table-column />
                                                                    <fo:table-column />
                                                                    <fo:table-body>
									<fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Folio :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="folio"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
									<fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Número Operación :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="codigoOperacion"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Fondo Mutuo :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="fondoMutuo"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Cuenta de fondo mutuo :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="cuentaFondoMutuo"/>
                                                                                    </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px"> Moneda :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="tipoMoneda"/>
                                                                                    </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">Tipo de inversión :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="tipoInversion"/>
                                                                                    </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px"> Monto a invertir :</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>                                                                                    
                                                                                    <fo:inline font-size="12px">
                                                                                        $<xsl:value-of select="format-number( montoInversion, '#.##0,####', 'euro')"/>
                                                                                    </fo:inline>                                                                                    
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
																					<fo:inline font-size="12px"> Fecha de Inversión:</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																				<fo:block>
																					<fo:inline font-size="12px">
																						<xsl:value-of select="fechaPago"/>
																					</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																		</fo:table-row>
																		<fo:table-row>
																			<fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																				<fo:block>
                                                                                    <fo:inline font-size="12px"> Con cargo a la cuenta:</fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
                                                                                <fo:block>
                                                                                    <fo:inline font-size="12px">
                                                                                        <xsl:value-of select="cuentaCliente"/>
                                                                                    </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
																		<fo:table-row>
																			<fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="right" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																				<fo:block>
																					<fo:inline font-size="12px"> Fecha de Cargo:</fo:inline>
																				</fo:block>
																			</fo:table-cell>
																			<fo:table-cell border-style="solid" border-width="1pt" border-color="white" text-align="left" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center">
																				<fo:block>
																					<fo:inline font-size="12px">
																						<xsl:value-of select="fechaPago"/>
                                                                                    </fo:inline>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <fo:table-cell border-style="solid" border-width="1pt" border-color="white" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" display-align="center" text-align="start">
                                                            <fo:block>
                                                                <fo:external-graphic space-before.optimum="4pt" space-after.optimum="4pt" src="url( {$img3} )"/>                                                                                                                                   
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
						    <fo:table-row>
                                                                            <fo:table-cell number-columns-spanned="2" padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="justify" display-align="before">
										<fo:block white-space-collapse="true"  text-align="justify" color="#000000" font-family="Arial" font-size="8.0pt" >
                                                                <fo:inline font-size="12px">
                                                                Usted podrá consultar su inversión en nuestro sitio Web a partir del  <xsl:value-of select="fechaConsulta"/>
                                                                </fo:inline>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>                                                    
                        						    <fo:table-row>
                                                       <fo:table-cell number-columns-spanned="2" padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="justify" display-align="before">
										                  <fo:block white-space-collapse="true"  text-align="justify" color="#000000" font-family="Arial" font-size="8.0pt" >
										<xsl:value-of select="mensajeOffline"/>
										</fo:block>
									    </fo:table-cell>
                                                                        </fo:table-row>
						    <fo:table-row>
                                                                            <fo:table-cell number-columns-spanned="2" padding-left="2.8pt" padding-right="2.8pt" padding-top="2.8pt" text-align="justify" display-align="before">
										<fo:block white-space-collapse="true"  text-align="justify" color="#000000" font-family="Arial" font-size="8.0pt" >
											<xsl:value-of select="textoPie"/>
										</fo:block>
									    </fo:table-cell>
                                                                        </fo:table-row>
                                                </fo:table-body>
                                            </fo:table>
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
