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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CRÉDITOS COMERCIALES</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
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
	                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>ASEGURABLE (Sólo personas naturales)</fo:block>
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
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Teléfono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="telefonoCliente"/></fo:inline></fo:block>
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
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="glosaMoneda" /></fo:inline></fo:block>
	                            </fo:table-cell>
	                            <fo:table-cell >
	                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operación: Desde <fo:inline font-weight="bold"><xsl:value-of select="vigenciaOperacionDesde" /></fo:inline> Hasta <fo:inline font-weight="bold"><xsl:value-of select="vigenciaOperacionHasta" /></fo:inline></fo:block>
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
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>ASEGURABLE (Sólo personas naturales)</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Teléfono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operación:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operación: Desde <fo:leader leader-pattern="space" leader-length="2cm"/> Hasta <fo:leader leader-pattern="space" leader-length="2cm"/></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Monto del Crédito responsabilidad del asegurable:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

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
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">FORMA DE PAGO</fo:inline>: Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del crédito solicitado, bajo el Nro. de Operación <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador informará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de esta propuesta, declaración personal de salud y la totalidad de los exámenes solicitados por la compañía.</fo:block>
                                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >La prima y/o tasa puede variar en función a la evaluación del riesgo por parte de las Compañías Aseguradoras</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>DECLARACIÓN DEL ASEGURADO:</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">a)	La presente propuesta de seguros  se hace a petición del suscrito y en ningún caso ha sido considerada como condición para el otorgamiento del (de los) crédito(s) ofrecido(s) o solicitado(s); y además declaro estar en pleno conocimiento de toda la información contenida en la presente propuesta.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">b)	Del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y compañía  aseguradora.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">c)	Estar dispuesto a someterme a pruebas médicas por cuenta de la Compañía, asimismo autorizo a los médicos, hospital, clínica u otra institución o persona que tenga mis registros personales para que entregue o proporcione la información solicitada por BCI Seguros Vida S.A. A su vez faculto a esta última para que solicite o retire copia de tales antecedentes patológicos, incluso en caso de muerte, conforme a lo dispuesto en la ley número 19.628, artículo 127 del Código Sanitario.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">d)	En cumplimiento  al artículo 524, numeral 1º y artículo 525 del código de Comercio, he declarado sinceramente todas las circunstancias que permiten identificar la cosa asegurada y apreciar la extensión del riesgo, las que se encuentran contenidas en la presente propuesta, la cual forma parte integrante de la póliza.</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left"><fo:leader leader-pattern="space" leader-length="1mm"/>COMUNICACIONES Y ENVÍO DE INFORMACIÓN</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">El contratante y/o asegurado facultan expresamente a la Compañía, para que ésta les envíe la copia de su póliza y demás documentos que forman parte integrante de la misma a la dirección de correo electrónico señalado en este instrumento, hecho lo cual se considerará haberse dado debido cumplimiento a lo dispuesto en el artículo 519 del Código de Comercio. Sin perjuicio de lo anterior, el contratante y/o asegurado podrán siempre solicitar una copia de la misma impresa en papel en el domicilio de la Compañía.</fo:block>
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Finalmente, el contratante y/o asegurado facultan a la compañía para enviar a la dirección de correo electrónico señalada en este instrumento todas las comunicaciones previstas en el Decreto Supremo N° 1055, en especial, aquellas que digan relación con el procedimiento de liquidación de siniestros.</fo:block>
                                    <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left">COBERTURA PROVISORIA:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">BCI SEGUROS VIDA S.A bajo la condición de veracidad de la declaración de salud y demás declaraciones formuladas en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de acuerdo a las condiciones generales de la póliza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta cobertura provisoria será el menor valor entre UF 1.000 y el monto del crédito cuya cobertura se solicita.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La cobertura otorgada por el presente certificado tendrá vigencia a contar de la fecha en que se reciba en oficinas de la compañía la prima del seguro propuesto y hasta la fecha de aceptación o rechazo definitivo del riesgo por parte de la compañía, lo cual no podrá exceder de 30 días. Para estos efectos, no se entenderá percibida la prima por el solo hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compañía comunicará por escrito al contratante, devolviendo la prima en depósito recibida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Es condición esencial que toda información entregada por el cliente sea fidedigna, entendiéndose que toda declaración falsa, errónea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaración personal de salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Este certificado no tendrá validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra propuesta de seguro de BCI SEGUROS VIDA S.A.</fo:block>                                   
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Desgravamen (POL 2 2013 0331)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponde al saldo insoluto del crédito al cierre del mes anterior al del fallecimiento, más los intereses devengados al cierre del mes inmediatamente anterior, menos: las cuotas atrasadas por más de 30 días; las cuotas en cartera vencida y/o castigada; las cuotas prepagadas no aplicadas en el saldo insoluto del crédito al cierre del mes anterior al del fallecimiento; las indemnizaciones pagadas por Renta por Hospitalización y/o Enfermedades Graves no rebajadas del Saldo insoluto del crédito al cierre del mes anterior al del fallecimiento.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento del crédito. La vigencia de esta cobertura se terminará con el prepago del crédito.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Crédito e Inversiones</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable por parte del Asegurado corresponde a su propia vida. Respecto del beneficiario tiene interés asegurable en tanto acreedor.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 75 años 0 días</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Para cobertura de fallecimiento rigen exclusiones del artículo 5º del POL 2 2013 0331 y que se resumen a continuación: a) Suicidio o autolesión; b) pena de muerte; c) acto delictivo; d) guerra o conmoción contra el orden público; e) participación en acto terrorista; f) participación en acto temerario; g) realización de actividad o deporte riesgoso; h) enfermedad preexistente; i) riesgo nuclear; j) infección oportunística, o un neoplasma maligno, si al momento de la muerte el asegurado sufría SIDA.</fo:block>
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
                            <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-right="1mm">AUTORIZACIÓN:</fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Autorizo al Banco para remitir a Bci Seguros Vida S.A., Bci Seguros Generales S.A. y/o Bci Corredores de Seguros S.A. la información pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y demás que fuere menester para dichas operaciones, según lo solicitaren dichas compañías.</fo:block>
                            <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro recibir en el acto un duplicado del documento individualizado y acepto las condiciones de asegurabilidad descritas.</fo:block>
							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
							<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" margin-right="1mm">DIVERSIFICACION DE PRODUCCION (Art.57 y 58 DFL 251):</fo:block>
                            <fo:block  font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La información sobre la diversificación de esta corredora, de las entidades aseguradoras con que haya trabajado y de las pólizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a su disposición en http://www.bci.cl/personas/seguros/diversificacion_de_cartera.html</fo:block>
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
                           <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CRÉDITOS COMERCIALES</fo:block>
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
                            <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="nroOperacion" /></fo:inline></fo:block>
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
                  Propuesta de Seguros Colocaciones para Créditos Comerciales
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
