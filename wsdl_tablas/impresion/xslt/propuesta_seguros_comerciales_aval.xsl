<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="propuesta_seguros_comerciales_aval">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta" force-page-count="no-force" initial-page-number="1">
                <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="30mm" />
                  <fo:table-column column-width="115.9mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >PROPUESTA DE SEGUROS</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CR�DITOS COMERCIALES</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="logoBciCorredoresSeguros"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-column column-width="96.95mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <xsl:variable name="tipoCliente" select="tipoCliente" />
              <xsl:if test="$tipoCliente = 'P'">
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="196mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>ASEGURABLE (S�lo personas naturales)</fo:block>
	                            </fo:table-cell>
	                      </fo:table-row>
	
	                </fo:table-body>
	               </fo:table>
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
	                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" />
	                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>                  
	                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block line-height="6mm"  font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="left" >DEUDOR DIRECTO</fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block line-height="6mm" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >
											  <fo:table border-collapse="collapse" text-align="left">
												  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
												  <fo:table-body>
													  <fo:table-row>
															<fo:table-cell >
																	<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm">
																	   <fo:leader leader-pattern="space" leader-length="2cm"/>
																	</fo:block>
															</fo:table-cell>                     
													  </fo:table-row>
												</fo:table-body>
											   </fo:table>
	                                    </fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">AVAL</fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="6mm">
											  <fo:table border-collapse="collapse" text-align="left">
												  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
												  <fo:table-body>
													  <fo:table-row>
															<fo:table-cell >
																	<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm">
																	   X
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
	
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="140mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	                  <fo:table-column column-width="56mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.###","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                      </fo:table-row>
	                </fo:table-body>
	              </fo:table>
	
	              <xsl:variable name="sexoClienteTmp" select="sexoCliente" />
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="20mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
	                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
	                  <fo:table-column column-width="36mm" border-top="0.5pt solid black" />                  
	                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
	                  <fo:table-column column-width="50mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-column column-width="70mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block line-height="6mm"  font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="left" >Sexo:</fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block line-height="6mm" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >
											  <fo:table border-collapse="collapse" text-align="left">
												  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
												  <fo:table-body>
													  <fo:table-row>
															<fo:table-cell >
																	<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" line-height="4.5mm" >
																	<xsl:if test="$sexoClienteTmp = 'M'">X</xsl:if>
																	<xsl:if test="$sexoClienteTmp != 'M'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>
																	</fo:block>
															</fo:table-cell>                     
													  </fo:table-row>
												</fo:table-body>
											   </fo:table>
	                                    </fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">Masculino</fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="6mm">
											  <fo:table border-collapse="collapse" text-align="left">
												  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
												  <fo:table-body>
													  <fo:table-row>
															<fo:table-cell >
																	<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm"   line-height="4.5mm">
																	<xsl:if test="$sexoClienteTmp = 'F'">X</xsl:if>
																	 <xsl:if test="$sexoClienteTmp != 'F'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>																
																	</fo:block>
															</fo:table-cell>                     
													  </fo:table-row>
												</fo:table-body>
											   </fo:table>                                    
	                                    </fo:block>
	                            </fo:table-cell>                 
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">Femenino</fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="telefonoCliente"/></fo:inline></fo:block>
	                            </fo:table-cell>                            
	                      </fo:table-row>
	                </fo:table-body>
	               </fo:table>
	
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="75mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
	                  <fo:table-column column-width="55mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
	                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento:<fo:leader leader-pattern="space" leader-length="1mm"/>
	                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(fechaNacCliente,0,4)" /></fo:inline>
	                                    <xsl:variable name="mes" select="substring(fechaNacCliente,4,2)" />
	                                    <fo:inline font-weight="bold">
	                                        <xsl:if test="$mes = 01">Enero</xsl:if>
	                                        <xsl:if test="$mes = 02">Febrero</xsl:if>
	                                        <xsl:if test="$mes = 03">Marzo</xsl:if>
	                                        <xsl:if test="$mes = 04">Abril</xsl:if>
	                                        <xsl:if test="$mes = 05">Mayo</xsl:if>
	                                        <xsl:if test="$mes = 06">Junio</xsl:if>
	                                        <xsl:if test="$mes = 07">Julio</xsl:if>
	                                        <xsl:if test="$mes = 08">Agosto</xsl:if>
	                                        <xsl:if test="$mes = 09">Septiembre</xsl:if>
	                                        <xsl:if test="$mes = 10">Octubre</xsl:if>
	                                        <xsl:if test="$mes = 11">Noviembre</xsl:if>
	                                        <xsl:if test="$mes = 12">Diciembre</xsl:if>
	                                    </fo:inline>
	                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(fechaNacCliente,6,5)" /></fo:inline>
	                                    </fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="estadoCivilCliente" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">E-mail:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="emailCliente" /></fo:inline></fo:block>
	                            </fo:table-cell>                            
	                      </fo:table-row>
	                </fo:table-body>
	              </fo:table>
	
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="110mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	                  <fo:table-column column-width="43mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	                  <fo:table-column column-width="43mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(direccion,0,40)" /></fo:inline></fo:block>
	                            </fo:table-cell>                            
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="comCliente" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><!-- <fo:inline font-weight="bold"><xsl:value-of select="comCliente" /></fo:inline> --></fo:block>
	                            </fo:table-cell>
	                      </fo:table-row>
	                </fo:table-body>
	              </fo:table>
	
	              <fo:table border-collapse="collapse" text-align="left">
	                  <fo:table-column column-width="59mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
	                  <fo:table-column column-width="33mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-column column-width="104mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
	                  <fo:table-body>
	                      <fo:table-row>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operaci�n:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="glosaMoneda" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operaci�n: Desde <fo:inline font-weight="bold"><xsl:value-of select="vigenciaOperacionDesde" /></fo:inline> Hasta <fo:inline font-weight="bold"><xsl:value-of select="vigenciaOperacionHasta" /></fo:inline></fo:block>
	                            </fo:table-cell>                            
	                      </fo:table-row>
	                </fo:table-body>
	              </fo:table>
              </xsl:if>
              
              
              <xsl:variable name="tipoCliente" select="tipoCliente" />
              <xsl:if test="$tipoCliente != 'P'">              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="196mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>ASEGURABLE (S�lo personas naturales)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
               </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>                  
                  <fo:table-column column-width="49mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="6mm"  font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="left" >DEUDOR DIRECTO</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block line-height="6mm" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >
										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm">
																   <fo:leader leader-pattern="space" leader-length="2cm"/>
																</fo:block>
														</fo:table-cell>                     
												  </fo:table-row>
											</fo:table-body>
										   </fo:table>
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">AVAL</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="6mm">
										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm">
																   X
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

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="140mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="56mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="20mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="36mm" border-top="0.5pt solid black" />                  
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="50mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-column column-width="70mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block line-height="6mm"  font-family="Helvetica" font-size="11pt" margin-left="1mm" text-align="left" >Sexo:</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block line-height="6mm" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" >
										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" line-height="4.5mm" >
                                                                   <fo:leader leader-pattern="space" leader-length="2cm"/>
																</fo:block>
														</fo:table-cell>                     
												  </fo:table-row>
											</fo:table-body>
										   </fo:table>
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">Masculino</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" line-height="6mm">
										  <fo:table border-collapse="collapse" text-align="left">
											  <fo:table-column column-width="7mm" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" border-bottom="0.0pt solid black"/>
											  <fo:table-body>
												  <fo:table-row>
														<fo:table-cell >
																<fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" margin-left="1mm" margin-right="1mm" margin-top="1mm" margin-bottom="1mm"   line-height="4.5mm">
                                                                   <fo:leader leader-pattern="space" leader-length="2cm"/>																
																</fo:block>
														</fo:table-cell>                     
												  </fo:table-row>
											</fo:table-body>
										   </fo:table>                                    
                                    </fo:block>
                            </fo:table-cell>                 
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" line-height="6mm" margin-left="1mm">Femenino</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="75mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="55mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Fecha Nacimiento:<fo:leader leader-pattern="space" leader-length="1mm"/>
                                        <fo:leader leader-pattern="space" leader-length="2cm"/>
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">E-mail:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="110mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="43mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="43mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="59mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-column column-width="104mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operaci�n:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operaci�n: Desde <fo:leader leader-pattern="space" leader-length="2cm"/> Hasta <fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              </xsl:if>
                            
<!--               <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Monto del Cr�dito responsabilidad del asegurable:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                                    <xsl:variable name="moneda" select="moneda" />
                                      <xsl:choose>
                                        <xsl:when test="$moneda = 'UF'">
                                           <xsl:value-of select="$moneda" /><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select='format-number(montoCredito, "###.###.##0,0000","decimal")' />
                                        </xsl:when>

                                        <xsl:when test="$moneda = '$'">
                                          <xsl:value-of select="$moneda" /><fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="montoCredito" />
                                        </xsl:when>
                                    </xsl:choose>
                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table> -->

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Intermediario: Bci Corredores de Seguros S. A., RUT 78.951.950-1</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>
                                          
              <xsl:variable name="isSeguros" select="isSeguros" />
              <xsl:if  test="$isSeguros = 'true'">
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>SEGUROS CONTRATADOS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="161mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="10pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COBERTURA</fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="10pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRIMA BRUTA UF</fo:block>
                                    <fo:block font-family="Helvetica" font-size="10pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              </xsl:if>

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="6mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="155mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />
                  
                  <fo:table-body>
                    <xsl:for-each select="seguros/seguro">
                      <fo:table-row>
                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="concepto" select="substring(codConcepto,1,3)" />
                                      <xsl:if  test="$concepto = 'DGA'">                                  
	                                      <xsl:variable name="estado" select="estado" />
	                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
	                                          <xsl:if test="$estado = 'true'">X</xsl:if>
	                                         <xsl:if test="$estado != 'true'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>
	                                      </fo:block>
                                      </xsl:if>                               
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell>
                            <xsl:variable name="concepto" select="substring(codConcepto,1,3)" />
                                  <xsl:if  test="$concepto = 'DGA'">
                                     <fo:block font-family="Helvetica" font-size="11pt" text-align="left" ><xsl:value-of select="descripcion"/></fo:block>
                                  </xsl:if>                                  
                            </fo:table-cell>                            

                            <fo:table-cell>
                                    <fo:block text-align="left">
                                        <xsl:variable name="monto" select="monto" />
                                          <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline>
                                              <xsl:variable name="concepto" select="substring(codConcepto,1,3)" />
                                              <xsl:if  test="$concepto = 'DGA'">                                          
	                                              <xsl:if  test="$monto &gt; 0">
	                                              <xsl:value-of select='format-number(monto, "###.###.##0,0000","decimal")'/>
	                                              </xsl:if>
	                                              <xsl:if test="$monto != 0">
                                              </xsl:if>                                              
                                                  <fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                      </xsl:for-each> 
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">FORMA DE PAGO</fo:inline>: Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador informar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de esta propuesta, declaraci�n personal de salud y la totalidad de los ex�menes solicitados por la compa��a.</fo:block>
                                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >La prima y/o tasa puede variar en funci�n a la evaluaci�n del riesgo por parte de las Compa��as Aseguradoras</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACI�N DEL ASEGURADO:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro que:</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a)	La presente propuesta de seguros  se hace a petici�n del suscrito y en ning�n caso ha sido considerada como condici�n para el otorgamiento del (de los) cr�dito(s) ofrecido(s) o solicitado(s); y adem�s declaro estar en pleno conocimiento de toda la informaci�n contenida en la presente propuesta.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">b)	Del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y compa��a  aseguradora.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">c)	Estar dispuesto a someterme a pruebas m�dicas por cuenta de la Compa��a, asimismo autorizo a los m�dicos, hospital, cl�nica u otra instituci�n o persona que tenga mis registros personales para que entregue o proporcione la informaci�n solicitada por BCI Seguros Vida S.A. A su vez faculto a esta �ltima para que solicite o retire copia de tales antecedentes patol�gicos, incluso en caso de muerte, conforme a lo dispuesto en la ley n�mero 19.628, art�culo 127 del C�digo Sanitario.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">d)	En cumplimiento  al art�culo 524, numeral 1� y art�culo 525 del c�digo de Comercio, he declarado sinceramente todas las circunstancias que permiten identificar la cosa asegurada y apreciar la extensi�n del riesgo, las que se encuentran contenidas en la presente propuesta, la cual forma parte integrante de la p�liza.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <xsl:call-template name="PiePagina"/>
             </fo:flow>
             </fo:page-sequence>


             <fo:page-sequence master-reference="miCarta">
              <fo:flow flow-name="xsl-region-body">
              <xsl:call-template name="EncabezadoFirma"/>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/>COMUNICACIONES Y ENV�O DE INFORMACI�N</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">El contratante y/o asegurado facultan expresamente a la Compa��a, para que �sta les env�e la copia de su p�liza y dem�s documentos que forman parte integrante de la misma a la direcci�n de correo electr�nico se�alado en este instrumento, hecho lo cual se considerar� haberse dado debido cumplimiento a lo dispuesto en el art�culo 519 del C�digo de Comercio. Sin perjuicio de lo anterior, el contratante y/o asegurado podr�n siempre solicitar una copia de la misma impresa en papel en el domicilio de la Compa��a.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Finalmente, el contratante y/o asegurado facultan a la compa��a para enviar a la direcci�n de correo electr�nico se�alada en este instrumento todas las comunicaciones previstas en el Decreto Supremo N� 1055, en especial, aquellas que digan relaci�n con el procedimiento de liquidaci�n de siniestros.</fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left">COBERTURA PROVISORIA:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">BCI SEGUROS VIDA S.A bajo la condici�n de veracidad de la declaraci�n de salud y dem�s declaraciones formuladas en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de acuerdo a las condiciones generales de la p�liza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta cobertura provisoria ser� el menor valor entre UF 1.000 y el monto del cr�dito cuya cobertura se solicita.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La cobertura otorgada por el presente certificado tendr� vigencia a contar de la fecha en que se reciba en oficinas de la compa��a la prima del seguro propuesto y hasta la fecha de aceptaci�n o rechazo definitivo del riesgo por parte de la compa��a, lo cual no podr� exceder de 30 d�as. Para estos efectos, no se entender� percibida la prima por el solo hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compa��a comunicar� por escrito al contratante, devolviendo la prima en dep�sito recibida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Es condici�n esencial que toda informaci�n entregada por el cliente sea fidedigna, entendi�ndose que toda declaraci�n falsa, err�nea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaraci�n personal de salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Este certificado no tendr� validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra propuesta de seguro de BCI SEGUROS VIDA S.A.</fo:block>                                   
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <xsl:call-template name="DatosFirma"/>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <xsl:call-template name="PiePagina"/>
              </fo:flow>
              </fo:page-sequence>
              
              <xsl:variable name="isSeguroDesgravamenAval" select="isSeguroDesgravamenAval" />
              <xsl:if  test="$isSeguroDesgravamenAval = 'true'">              
              <fo:page-sequence master-reference="miCarta">
              <fo:flow flow-name="xsl-region-body">
              <xsl:call-template name="EncabezadoFirma"/>             
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-left="1mm">SEGURO DESGRAVAMEN</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Desgravamen (POL 2 2013 0331)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponde al saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento, m�s los intereses devengados al cierre del mes inmediatamente anterior, menos: las cuotas atrasadas por m�s de 30 d�as; las cuotas en cartera vencida y/o castigada; las cuotas prepagadas no aplicadas en el saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento; las indemnizaciones pagadas por Renta por Hospitalizaci�n y/o Enfermedades Graves no rebajadas del Saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento del cr�dito. La vigencia de esta cobertura se terminar� con el prepago del cr�dito.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Cr�dito e Inversiones</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable por parte del Asegurado corresponde a su propia vida. Respecto del beneficiario tiene inter�s asegurable en tanto acreedor.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 75 a�os 0 d�as</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Para cobertura de fallecimiento rigen exclusiones del art�culo 5� del POL 2 2013 0331 y que se resumen a continuaci�n: a) Suicidio o autolesi�n; b) pena de muerte; c) acto delictivo; d) guerra o conmoci�n contra el orden p�blico; e) participaci�n en acto terrorista; f) participaci�n en acto temerario; g) realizaci�n de actividad o deporte riesgoso; h) enfermedad preexistente; i) riesgo nuclear; j) infecci�n oportun�stica, o un neoplasma maligno, si al momento de la muerte el asegurado sufr�a SIDA.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <xsl:call-template name="PiePagina"/>
              </fo:flow>
              </fo:page-sequence>
              </xsl:if>           
              
             <fo:page-sequence master-reference="miCarta">
              <fo:flow flow-name="xsl-region-body">
              <xsl:call-template name="EncabezadoFirma"/>             
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" text-align="left">
              <fo:table-column/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                            <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-right="1mm">AUTORIZACI�N:</fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Autorizo al Banco para remitir a Bci Seguros Vida S.A., Bci Seguros Generales S.A. y/o Bci Corredores de Seguros S.A. la informaci�n pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo solicitaren dichas compa��as.</fo:block>
                            <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro recibir en el acto un duplicado del documento individualizado y acepto las condiciones de asegurabilidad descritas.</fo:block>
							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-right="1mm">DIVERSIFICACION DE PRODUCCION (Art.57 y 58 DFL 251):</fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La informaci�n sobre la diversificaci�n de esta corredora, de las entidades aseguradoras con que haya trabajado y de las p�lizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a su disposici�n en http://www.bci.cl/personas/seguros/diversificacion_de_cartera.html</fo:block>
                           </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <xsl:call-template name="DatosFirma"/>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <xsl:call-template name="PiePagina"/>
              <fo:block id="final"/> 
             </fo:flow>
             </fo:page-sequence>            
        </fo:root>
    </xsl:template>
    
     <xsl:template name="EncabezadoFirma">
     <fo:table border-collapse="collapse">
         <fo:table-column column-width="30mm" />
         <fo:table-column column-width="115.9mm" />
         <fo:table-column column-width="50mm"/>
         <fo:table-body>
             <fo:table-row>
                   <fo:table-cell >
                           <fo:block >
                         
                           </fo:block>
                   </fo:table-cell>

                   <fo:table-cell >
                           <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >PROPUESTA DE SEGUROS</fo:block>
                           <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CR�DITOS COMERCIALES</fo:block>
                   </fo:table-cell>

                   <fo:table-cell >
                           <fo:block >
                             <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                               <xsl:attribute name="src">
                               <xsl:value-of select="logoBciCorredoresSeguros"/>
                               </xsl:attribute>
                             </fo:external-graphic>
                           </fo:block>
                   </fo:table-cell>

             </fo:table-row>
       </fo:table-body>
       </fo:table>
       <fo:table border-collapse="collapse">
          <fo:table-column column-width="96.95mm"/>
          <fo:table-column column-width="96.95mm"/>
          <fo:table-body>
              <fo:table-row>
                    <fo:table-cell >
                    </fo:table-cell>
                    <fo:table-cell >
                            <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
                    </fo:table-cell>
              </fo:table-row>
        </fo:table-body>
        </fo:table>       

       </xsl:template>
                
       <xsl:template name="DatosFirma">
        <fo:table border-collapse="collapse" >
            <fo:table-column />
            <fo:table-column />
            <fo:table-column />
            <fo:table-column />
            <fo:table-body>
                <fo:table-row>
                      <fo:table-cell >
                                <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                  <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block line-height="4.5mm" space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="fechaSuscripcion"/></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="12mm"/>Fecha</fo:block>
                                </fo:block-container>
                      </fo:table-cell>
                      <fo:table-cell >
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block line-height="4.5mm"     text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Asegurable</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block line-height="4.5mm"     text-align="center"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Firma del Titular</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                                <fo:block-container width="125mm"   height="125mm" background-repeat="no-repeat" >
                                            <xsl:attribute name="background-image">
                                            <xsl:value-of select="logoFirmaCorredor"/>
                                            </xsl:attribute>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block space-before="0.5em"    space-after="0.5em"></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm"><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                  <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" >Firma del Corredor</fo:block>
                                </fo:block-container>
                      </fo:table-cell>
                </fo:table-row>
          </fo:table-body>
        </fo:table>              
        </xsl:template> 

        
        <xsl:template name="PiePagina">
        <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
        <fo:table table-layout="fixed" display-align="center">
        <fo:table-column column-width="110mm"/>
        <fo:table-column column-width="75mm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell>
              <fo:block font-weight="bold" text-align="left">
                  Propuesta de Seguros Colocaciones para Cr�ditos Comerciales
              </fo:block>
            </fo:table-cell>
            <fo:table-cell>
              <fo:block font-weight="bold" text-align="right">
                  <fo:inline text-align="right">Pag. <fo:page-number/> de <fo:page-number-citation ref-id="final"/> </fo:inline>
              </fo:block>
            </fo:table-cell>
          </fo:table-row>
        </fo:table-body>
        </fo:table>
        </fo:block>
        </xsl:template> 
                  
</xsl:stylesheet>
