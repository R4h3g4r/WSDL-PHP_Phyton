<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />

    <xsl:param name="IMG_URL"/>

    <xsl:template match="vinculado">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>ASEGURABLE (Sólo personas naturales)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
               </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>                  
                  <fo:table-column column-width="48.9775mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>
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
																X
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
																<fo:leader leader-pattern="space" leader-length="17cm"/>
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
                  <fo:table-column column-width="138.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="57mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Nombre Completo:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Rut:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' /><!--<xsl:value-of select="OperacionCredito/rutCliente" />-->-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <xsl:variable name="sexoClienteTmp" select="OperacionCredito/sexoCliente" />
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="18mm" border-top="0.5pt solid black" border-left="0.5pt solid black"/>
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="40mm" border-top="0.5pt solid black" />                  
                  <fo:table-column column-width="10mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="117.91mm" border-top="0.5pt solid black" border-right="0.5pt solid black"/>                  
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
																<xsl:if test="$sexoClienteTmp = 'Masculino'">X</xsl:if>
																<xsl:if test="$sexoClienteTmp != 'Masculino'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>
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
																<xsl:if test="$sexoClienteTmp = 'Femenino'">X</xsl:if>
																 <xsl:if test="$sexoClienteTmp != 'Femenino'"><fo:leader leader-pattern="space" leader-length="2cm"/></xsl:if>																
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
                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,0,4)" /></fo:inline>
                                    <xsl:variable name="mes" select="substring(OperacionCredito/fechaNacCliente,4,2)" />
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
                                    <fo:inline font-weight="bold"><xsl:value-of select="substring(OperacionCredito/fechaNacCliente,6,5)" /></fo:inline>
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Estado Civil:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/estadoCivilCliente" /></fo:inline></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">E-mail:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/emailCliente" /></fo:inline></fo:block>
                            </fo:table-cell>                            
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"  text-align="left" margin-left="1mm" line-height="4.5mm">Domicilio:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/direccion,0,32)" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
               </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Teléfono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DireccionDeudorBci/fono" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operación:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Moneda:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/glosaMoneda" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Monto del Crédito responsabilidad del asegurable:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                                    <xsl:variable name="moneda" select="OperacionCredito/moneda" />
                                      <xsl:choose>

                                        <xsl:when test="$moneda = 'UF'">
                                           <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0,0000","decimal")'/>
                                        </xsl:when>


                                        <xsl:when test="$moneda = '$'">
                                          <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                                        </xsl:when>

                                    </xsl:choose>



                                    </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="75mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="9mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="35mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="9mm" border-top="0.5pt solid black" />
                  <fo:table-column column-width="67.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operación: Desde <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/vigenciaOperacionDesde" /></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" ></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm">Hasta <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/vigenciaOperacionHasta" /></fo:inline></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>
                                          
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
                  <fo:table-column column-width="167mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="29mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>


                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COBERTURA</fo:block>                                    
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">PRIMA BRUTA</fo:block>
                            </fo:table-cell>
                          

                      </fo:table-row>
                </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="5mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="162mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="29mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>

                  <fo:table-body>

                      <fo:table-row>

                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="primBrutaSegDesgravamen" select="OperacionCredito/primaBrutaSeguroDesgravamen" />
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">
                                          <xsl:if  test="$primBrutaSegDesgravamen &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Desgravamen/Invalidez 2/3 (POL 2 2013 0331 / CAD 2 2013 1138)</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegDesgravamen" select="OperacionCredito/primaBrutaSeguroDesgravamen" />
                                          <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegDesgravamen &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroDesgravamen, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>

                      </fo:table-row>

                      <fo:table-row>

                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                          <xsl:if  test="$primBrutaSegDobleCap &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Doble Capital   (POL 2 2013 0055 / CAD 3 2013 0060)</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
                                          <fo:block  border-top="0.5pt solid black"    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegDobleCap &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroDobleCapital, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>

                      </fo:table-row>

		     <fo:table-row>

                            <fo:table-cell >
                                <fo:block >
                                    <xsl:variable name="primBrutaSegSaludPro" select="OperacionCredito/primaBrutaSeguroSaludProtegida" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                        <xsl:if  test="$primBrutaSegSaludPro &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
									   </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black"  font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Seguro Salud Protegida (POL 3 2013 0507; POL 3 2013 0409 letra A y B; POL 3 2013 0085 letra L).</fo:block>
                            </fo:table-cell>
							    <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegSaludPro" select="OperacionCredito/primaBrutaSeguroSaludProtegida" />
                                          <fo:block  border-top="0.5pt solid black"    font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegSaludPro &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaSeguroSaludProtegida, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                    </fo:block>
                            </fo:table-cell>

                         

					   </fo:table-row>

                            <fo:table-row>
                            <fo:table-cell >
                                 <fo:block >
                                      <xsl:variable name="primBrutaSegCesantia" select="OperacionCredito/primaBrutaCesantiaInvoluntaria" />
                                      <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="0mm" line-height="4.5mm">
                                          <xsl:if  test="$primBrutaSegCesantia &gt; 0">X</xsl:if>
                                      </fo:block>
                                      <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" line-height="4.5mm">
                                      </fo:block>
                                  </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black"  font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Cesantía Involuntaria  (POL 1 2013 0122, Riesgos A y B)</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                        <xsl:variable name="primBrutaSegCesantia" select="OperacionCredito/primaBrutaCesantiaInvoluntaria" />
                                          <fo:block   border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">UF <fo:inline font-weight="bold">
                                              <xsl:if  test="$primBrutaSegCesantia &gt; 0">
                                              <xsl:value-of select='format-number(OperacionCredito/primaBrutaCesantiaInvoluntaria, "###.###.##0,0000","decimal")'/>
                                              </xsl:if>
                                        </fo:inline></fo:block>
                                         <fo:block    font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm"></fo:block>
                                    </fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>


			  <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
			  <xsl:if  test="$primBrutaSegDobleCap &gt; 0">
                                          
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>BENEFICIARIOS SEGURO DOBLE CAPITAL Y/O ACCIDENTES PERSONALES (Sólo en caso de seleccionar Doble Capital y/o Accidentes Personales)</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="40mm"    border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="123.9mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="32mm"    border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">Rut</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm" ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">Nombre completo o Razón Social</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">% Distribución</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica"  font-size="11pt" text-align="right" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">En caso que el asegurado no designe beneficiarios, éstos serán los herederos legales</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              </xsl:if>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">FORMA DE PAGO</fo:inline>: Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del crédito solicitado, bajo el Nro. de Operación <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" />  </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Con la emisión de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de esta propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía.</fo:block>
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

              <fo:block ><fo:leader leader-pattern="space" leader-length="187cm"/></fo:block>
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

            <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
            <fo:table table-layout="fixed" display-align="center">
              <fo:table-column column-width="100mm"/>
              <fo:table-column column-width="85mm"/>
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="left">
                        Seguros Cliente Protegido para Créditos de Consumo
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="right">
                        <fo:inline text-align="right">Pag. <fo:page-number/> de <fo:page-number-citation ref-id="final"/></fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
            </fo:block>

             </fo:flow>
             </fo:page-sequence>

	
             <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>COMUNICACIONES Y ENVÍO DE INFORMACIÓN</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                   <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">El contratante y/o asegurado facultan expresamente a la Compañía, para que ésta les envíe la copia de su póliza y demás documentos que forman parte integrante de la misma a la dirección de correo electrónico señalado en este instrumento, hecho lo cual se considerará haberse dado debido cumplimiento a lo dispuesto en el artículo 519 del Código de Comercio. Sin perjuicio de lo anterior, el contratante y/o asegurado podrán siempre solicitar una copia de la misma impresa en papel en el domicilio de la Compañía.</fo:block>
                                   <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Finalmente, el contratante y/o asegurado facultan a la compañía para enviar a la dirección de correo electrónico señalada en este instrumento todas las comunicaciones previstas en el Decreto Supremo N° 1055, en especial, aquellas que digan relación con el procedimiento de liquidación de siniestros.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>COBERTURA PROVISORIA:</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">BCI SEGUROS VIDA S.A bajo la condición de veracidad de la declaración de salud y demás declaraciones formuladas en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de acuerdo a las condiciones generales de la póliza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta cobertura provisoria será el menor valor entre UF 1.000 y el monto indicado en la propuesta para dicho riesgo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La cobertura otorgada por el presente certificado tendrá vigencia a contar de la fecha en que se reciba en oficinas de la compañía la prima del seguro propuesto y hasta la fecha de aceptación o rechazo definitivo del riesgo por parte de la compañía, dentro de los próximos 30 días. Para estos, no se entenderá percibida la prima por el solo hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compañía comunicará por escrito al contratante, devolviendo la prima en depósito recibida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Es condición esencial que toda información entregada por el cliente sea fidedigna, entendiéndose que toda declaración falsa errónea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaración personal de Salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Este certificado no tendrá validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra propuesta de seguro de esta compañía.</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>              
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
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
                                        <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="OperacionCredito/fechaSuscripcion"/></fo:block>
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
                                                  <xsl:value-of select="OperacionCredito/logoFirmaCorredor"/>
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
           
            <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
            <fo:table table-layout="fixed" display-align="center">
              <fo:table-column column-width="100mm"/>
              <fo:table-column column-width="85mm"/>
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="left">
                        Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>
			<xsl:variable name="primBrutaSegDesgravamen" select="OperacionCredito/primaBrutaSeguroDesgravamen" />
			  <xsl:if  test="$primBrutaSegDesgravamen &gt; 0">
              <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO DESGRAVAMEN</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Base: </fo:inline> Desgravamen (POL 2 2013 0331)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Adicional: </fo:inline> Invalidez Permanente dos Tercios (CAD 2 2013 1138)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La Compañía Aseguradora se reserva el derecho de aceptar o rechazar una o ambas coberturas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponderá al saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez, más los intereses devengados al cierre del mes inmediatamente anterior, menos las cuotas atrasadas por más de 30 días,las cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez.-</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento del crédito. La vigencia de esta cobertura se terminará con el prepago del crédito. Con la emisión de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de la propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Crédito e Inversiones</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable por parte del Asegurado corresponde a su propia vida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Respecto del beneficiario tiene interés asegurable en tanto éste es el acreedor.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 78 años 0 días para desgravamen y 65 años 0 días para la cobertura de Invalidez permanente dos tercios.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: Para cobertura de fallecimiento</fo:inline> rigen exclusiones del artículo 5º del POL 2 2013 0331 y que se resumen a continuación: a) Suicidio o autolesión; b) pena de muerte; c) acto delictivo; d) guerra o conmoción contra el orden público; e) participación en acto terrorista; f) participación en acto temerario; g) realización de actividad o deporte riesgoso; h) enfermedad preexistente; i) riesgo nuclear; j) infección oportunística, o un neoplasma maligno, si al momento de la muerte el asegurado sufría SIDA.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Para cobertura de Invalidez</fo:inline> rigen exclusiones del artículo 3º del CAD 2 2013 1138  y que se resumen a continuación: a) intento de suicidio o autolesión y b)estado de ebriedad o bajo efecto de drogas.</fo:block>
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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>
				</xsl:if>

			  <xsl:variable name="primBrutaSegDobleCap" select="OperacionCredito/primaBrutaSeguroDobleCapital" />
			  <xsl:if  test="$primBrutaSegDobleCap &gt; 0">

              <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>
			  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO DOBLE CAPITAL</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Base: </fo:inline> Muerte (POL 2 2013 0055) </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Adicional: </fo:inline> Invalidez Permanente dos Tercios (CAD 3 2013 0060)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La Compañía Aseguradora se reserva el derecho de aceptar o rechazar una o ambas coberturas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> En el caso de que el crédito esté vigente, el monto asegurado corresponderá al saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez permanente dos tercios más los intereses devengados al cierre del mes inmediatamente anterior, menos las cuotas atrasadas por más de 30 días, las cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del crédito al cierre del mes anterior al del fallecimiento o de la resolución de invalidez permanente dos tercios.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento del crédito. La vigencia de esta cobertura se terminará con el prepago del crédito que se utilizó como medio de pago. Con la emisión de la  propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de la propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Para cobertura de muerte serán los designados por el Asegurado y en caso de no existir designación serán los herederos legales. Para cobertura de invalidez permanente dos tercios será el asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable por parte del Asegurado corresponde a su propia vida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 75 años 0 días para cobertura de fallecimiento y 65 años 0 días para la cobertura de Invalidez Permanente dos tercios.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: Para cobertura de fallecimiento</fo:inline> rigen exclusiones del artículo 5º del POL 2 2013 0331 y que se resumen a continuación: a) Suicidio o autolesión; b) pena de muerte; c) acto delictivo; d) guerra o conmoción contra el orden público; e) participación en acto terrorista; f) participación en acto temerario; g) realización de actividad o deporte riesgoso; h) enfermedad preexistente; i) riesgo nuclear; j) infección oportunística, o un neoplasma maligno, si al momento de la muerte el asegurado sufría SIDA.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold"> Para cobertura de Invalidez permanente dos tercios</fo:inline>, rigen exclusiones del artículo 3º del CAD 3 2013 0060 y que se resumen a continuación: a) intento de suicidio; b) participación en actos temerarios; c) práctica de deportes riesgosos; d) práctica de actividad riesgosa; e) estado de ebriedad o bajo efecto de drogas; f) viajes aéreos en vuelos no regulares, g) enfermedades preexistentes.</fo:block>  
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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

             </fo:flow>
              </fo:page-sequence>
              
              </xsl:if>


			  <xsl:variable name="primBrutaSegRentaH" select="OperacionCredito/primaBrutaSeguroRentaPorHospitalizacion" />
			  <xsl:if  test="$primBrutaSegRentaH &gt; 0">
			  
              <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
			  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO RENTA POR HOSPITALIZACIÓN</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Renta por Hospitalización  (POL 3 2013 0502)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponde a un monto equivalente al valor de la cuota pactada originalmente en el crédito que se utilizó como medio de pago, y será con un máximo de seis cuotas con un tope de UF 50 por cada cuota, durante toda la vigencia del seguro. Los límites de indemnización se definen de acuerdo al período de hospitalización siguiente: de 4 a 30 días,  1 cuota; de 31 a 60 días, 2 cuotas; de 61 a 90 días, 3 cuotas; de 91 a 120 días, 4 cuotas; de 121 a 150 días, 5 cuotas; de 151 a 180, días 6 cuotas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento original del crédito de acuerdo a las condiciones pactadas en el momento del curse del crédito que se está utilizando como medio de pago.  La vigencia de esta cobertura no se terminará necesariamente con el prepago del crédito que se utilizó como medio de pago, dando la opción al asegurado de mantener, en el mismo acto, el seguro hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el término del seguro. Con la emisión de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de la propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Crédito e Inversiones hasta la concurrencia de su interés en el monto asegurado al momento de producirse el siniestro.  El saldo de la indemnización, si la hubiera, se pagará al asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable corresponde a la merma que se genera en el ingreso familiar dado el pago de los gastos médicos asociados a la hospitalización.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 75 años 0 días.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline> 60 días contados desde la fecha de curse del crédito de consumo asociado al seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Rigen exclusiones del artículo 4º del POL 3 2013 0502 y que se resumen a continuación: a) guerra o conmoción contra el orden público; b) hospitalización por tratamiento a la adicción de drogas, alcoholismo, enfermedad mental o cirugía plástica c) curas de reposo; d) hospitalización por embarazo, aborto o enfermedad relacionada a los órganos de reproducción femeninos; e) anomalías congénitas; f) enfermedad preexistente; g) exámenes médicos de rutina; h) intento de suicidio; i) enfermedades directas, oportunistas o secundarias al SIDA; j) diagnóstico por acupunturista, homeópata u otra persona que no sea médico.</fo:block>
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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>
              </xsl:if>


			  <xsl:variable name="primBrutaSegEnfermedadesG" select="OperacionCredito/primaBrutaSeguroEnfermedadesGarves" />
			  <xsl:if  test="$primBrutaSegEnfermedadesG &gt; 0">

              <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>


              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO ENFERMEDADES GRAVES</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Enfermedades Graves  (POL 3 2013 0507). La compañía pagará al asegurado bajo esta cláusula adicional identificado en las Condiciones Particulares, por una sola vez, si el asegurado sobrevive 90 días al diagnóstico de una de las siguientes enfermedades e intervenciones: 1) cáncer; 2) accidente vascular cerebral; 3) infarto al miocardio; 4) revascularización coronaria (by-pass); 5) insuficiencia renal crónica; 6) trasplante de órganos mayores y 7) parálisis</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponde un monto equivalente  al valor de la cuota pactada originalmente en el crédito que se utilizó como medio de pago y será con un máximo de seis cuotas con un tope de UF 50 por  cada cuota durante toda la vigencia del seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento original del crédito de acuerdo a las condiciones pactadas en el momento del curse del crédito que se utilizó como medio de pago.  La vigencia de esta cobertura no se terminará necesariamente con el prepago del crédito que se utilizó como medio de pago, dando la opción al asegurado de mantener, en el mismo acto, los seguros hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el término del seguro. Con la emisión de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de la propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Crédito e Inversiones hasta la concurrencia de su interés en el monto asegurado al momento de producirse el siniestro. El saldo de la indemnización, si lo hubiera, se pagará al asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable corresponde a la merma que se genera en el ingreso familiar dado el pago de los gastos médicos asociados a la enfermedad.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 75 años 0 días.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline> 60 días contados desde la fecha de curse del crédito de consumo asociado al seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Enfermedades Excluidas: </fo:inline> Las siguientes enfermedades o intervenciones no serán cubiertas: 1) Esclerosis múltiple; 2) pérdida de miembros; 3) ceguera; 4) pérdida de audición; 5) cirugía de válvulas cardíacas; 6) injerto aórtico; 7) angioplastia con balón; 8) Alzheimer; 9) Parkinson; 10) distrofia muscular; 11) politraumatismo; 12) quemaduras graves; y 13) neurocirugía.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones Generales: </fo:inline> Rigen exclusiones del artículo 4º del POL 3 2013 0507 y que se resumen a continuación: a) SIDA o VIH; b) Leucemia linfocítica crónica; c) suicidio, enfermedad intencionalmente causada, lesiones autoinfligidas; d) riñas; e) riesgos nucleares; f) padecimientos congénitos; g) trasplantes de investigación; h) intoxicación o bajo los efectos de drogas; i) conducción en estado de ebriedad; j) enfermedades preexistentes.</fo:block>
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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>

              </xsl:if>

			  <xsl:variable name="primBrutaSegAccidente" select="OperacionCredito/primaBrutaSeguroAccidentesPersonales" />
			  <xsl:if  test="$primBrutaSegAccidente &gt; 0">



                <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO ACCIDENTES PERSONALES</fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline text-decoration="underline" font-weight="bold">Coberturas y Montos Asegurados: </fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">A) Muerte Accidental</fo:inline> (POL 3 2013 0409 Letra A) con Capital Asegurado de UF 200</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">B) Desmembramiento e Incapacidad Total y Permanente por Accidente</fo:inline> (POL 3 2013 0409  Letra B) con capital asegurado de UF 200</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">C) Renta Mensual por Accidente Cónyuge</fo:inline> (POL 3 2013 0409 Letra C) La compañía aseguradora pagará al cónyuge del asegurado, como beneficiario de esta cobertura, un monto mensual de UF 5 durante 6 meses en caso de fallecimiento del asegurado titular como consecuencia directa e inmediata de un accidente cubierto por esta póliza.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Para cobertura de muerte accidental y renta mensual por accidente serán los designados por el asegurado y en caso de no existir designación serán los herederos legales.  Para cobertura de desmembramiento e incapacidad total y permanente por accidente será el asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable por parte del asegurado corresponde a su propia vida e integridad personal.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento original del crédito de acuerdo a las condiciones pactadas en el momento de curse de crédito que se está utilizando como medio de pago. La vigencia de esta cobertura no se terminará necesariamente con el prepago del crédito que se utilizó como medio de pago, dando la opción al asegurado de mantener, en el mismo acto, el seguro hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el término del seguro. Con la emisión de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de la propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 75 años 0 días </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de Asegurabilidad: </fo:inline> No tiene.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline> No tiene.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Rigen exclusiones del artículo 6º del POL 3 2013 0409 y que se resumen a continuación: a) guerra; b) participación en peleas o riñas; c) participación en actos delictivos, conmoción civil, terrorismo entre otros; d) suicidio, intento de suicidio o heridas autoinfligidas; e) prestación de servicios en Fuerzas Armadas o funciones policiales; f) participación en carreras, competencias remuneradas; g) intoxicación, drogas; h) conducción en estado de ebriedad; i) negligencia o imprudencia; j) riesgos nucleares o atómicos; k) sismos desde grado 8.</fo:block>
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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>
			</xsl:if>
			 <xsl:variable name="primBrutaSegSaludPro" select="OperacionCredito/primaBrutaSeguroSaludProtegida" />
			  <xsl:if  test="$primBrutaSegSaludPro &gt; 0">

                <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

			              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO SALUD PROTEGIDA</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Generales S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Enfermedades Graves (POL 3 2013 0507), Accidentes Personales (POL 3 2013 0409 riesgos A, B1 y B2), Fracturas (POL 3 2013 0085 Alt L)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">1.- Enfermedades Graves </fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La compañía pagará al asegurado bajo esta cobertura identificada en estas Condiciones Particulares, por una sola vez, si el asegurado es diagnosticado de una de las siguientes enfermedades e intervenciones:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1) Cáncer; 2) Accidente vascular cerebral; 3) Infarto al miocardio; 4) Revascularización coronaria (by-pass); 5) Insuficiencia renal crónica; 6) Trasplante de órganos mayores; 7) Parálisis; 8) Esclerosis múltiple; 9) Ceguera; 10) Quemaduras graves</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline text-decoration="underline">Enfermedades excluidas:</fo:inline> Las siguientes enfermedades o intervenciones no serán cubiertas. 1)  Pérdida de miembros; 2) Pérdida de audición; 3) Cirugía de válvulas cardíacas; 4) Injerto aórtico; 5) Angioplastia con balón; 6) Alzheimer; 7) Parkinson; 8) Distrofia muscular; 19) Politraumatismo;10) Neurocirugía. Además de las exclusiones antes mencionadas, no estarán cubiertas por la póliza las situaciones o enfermedades que tengan su causa mediata o inmediata en alguno de los siguientes hechos:</fo:block>  

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Rigen exclusiones del artículo 4° del POL 3 2013 0507 y que se resumen a continuación:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Sida o presencia del virus VIH, b) Leucemia linfocítica crónica, c) Suicidio, tentativa de suicidio o enfermedad intencionalmente causada o lesiones autoinflingidas, ya sea en estado de cordura o demencia, d) Riñas o alborotos populares en los que hubiere intervenido el asegurado, e) Riesgos nucleares, f) Padecimientos congénitos, g) Trasplantes que sean procedimientos de investigación, h) Intoxicación o encontrarse el asegurado bajo los efectos de cualquier narcótico o droga, i) La conducción de cualquier vehículo por parte del asegurado, encontrándose éste en estado de ebriedad, j) Enfermedades preexistentes.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" text-decoration="underline">Definiciones</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1. Cáncer: La presencia de uno o más tumores malignos, incluyendo entre ellos los diversos tipos de leucemia (excepto la leucemia linfocitico crónica) los linfomas y la enfermedad de Hodgkin; caracterizados por el crecimiento incontrolado, la diseminación de células malignas y la invasión y destrucción de tejidos normales. El diagnóstico deberá haber sido hecho por un médico oncólogo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Los siguientes cánceres no están cubiertos por la póliza:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a. Tumores que presenten los cambios malignos característicos de carcinoma in situ (incluyendo la displasia cervical CIN-1, CIN-2 y CIN-3) o aquellos considerados por histología como premalignos;</fo:block>   
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">b. Melanomas con espesor menor de 1,5 mm, determinado por examen histológico, o cuando la invasión sea menor del nivel de Clark 3; </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">c. Todas las hiperqueratosis o los carcinomas basocelulares de la piel; </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">d. Todos los carcinomas de piel, células escamosas, excepto cuando se trate de diseminación de otros órganos;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">e. Sarcoma de Kaposi y otros tumores relacionados con la infección VIH o SIDA;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">f. Cánceres de la próstata que por histología pertenezcan a la etapa T1 del sistema TNM, desarrollado por la Unión Internacional contra el Cáncer (incluyendo T1 (a) o T1 (b) o de cualquier otra clasificación equivalente o menor).</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">2. Accidente vascular cerebral: Cualquier incidente cerebro vascular que dé lugar a secuelas que dure más de veinticuatro (24) horas y que incluyan infarto del tejido cerebral, hemorragia y embolismo, todos de una fuente extra craneana. La evidencia del daño neurológico permanente deberá ser confirmada por un neurólogo, como mínimo doce (12) semanas después del suceso. No se aceptarán reclamaciones antes de transcurrido ese tiempo. No se considerarán dentro de la cobertura los síntomas cerebrales de migraña, lesión cerebral causada por un traumatismo o hipoxia y enfermedad vascular que afecte al ojo o al nervio óptico, y las alteraciones isquémicas del sistema vestibular.  </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">3. Infarto al miocardio: La muerte de una porción del músculo cardiaco, causada por irrigación inadecuada de la parte afectada y puesta de manifiesto por el típico dolor del pecho, la aparición de modificaciones electro cardiográfica que no existían (nuevas) y elevación de las enzimas cardiacas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">4. Revascularización coronaria (by-pass): Comprende la que se realiza al menos a dos o más arterias coronarias, por consejo de un médico especialista en esta cirugía, para corregir la estenosis u oclusión de las arterias coronarias, pero quedan excluidas las técnicas no operatorias mediante cirugía, como la angioplastia, el tratamiento por láser o cualquier otro procedimiento no operatorio.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">5. Insuficiencia renal crónica: La etapa final de la insuficiencia renal, por fallo funcional, crónico e irreversible de ambos riñones, que hace necesaria la diálisis renal sistemática o el trasplante renal. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">6. Trasplante de órganos mayores: El que se realiza al asegurado como receptor del trasplante de un órgano que puede ser cualquiera de los siguientes: corazón, pulmón, hígado, riñón, médula ósea o páncreas, siempre y cuando el órgano del asegurado esté o haya estado lesionado o enfermo. La cobertura sólo comprende el trasplante de todo el órgano y no de fracciones o partes de éste, por lo que en el caso del páncreas se excluye el trasplante de Islotes de Langerhans. No estará cubierto el trasplante autólogo. Será requisito indispensable para el pago del beneficio que el asegurado notifique previamente y por escrito a la compañía aseguradora el hecho de ser definido como candidato a trasplante por la institución hospitalaria o reguladora correspondiente y antes que éste se realice. Una vez que la compañía ha sido notificada de este hecho sólo podrá poner término al contrato del asegurado que se encuentre en dicha situación si éste incurriere en alguna causal legal que así lo permita. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">7. Esclerosis múltiple: Diagnóstico inequívoco de esclerosis múltiple, hecho por un neurólogo, en que el paciente deba ser internado en un hospital por esta causa. Deberá haber evidencia de los síntomas característicos de desmielinización, de anormalidades neurológicas persistentes y de deterioro funcional. El diagnóstico deberá confirmarse por investigaciones neurológicas (ejemplo: punción lumbar, respuestas auditivas y visuales evocadas y evidencia de lesiones del sistema nervioso central).</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">8. Parálisis: Parálisis total y permanente, producida por accidente o enfermedad. Deberá haber evidencia del fallo total y permanente de la conductividad de la médula espinal por sección medular. La conexión de tiempo y causa con el daño deberá ser obvia. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">9. Ceguera: Pérdida total e irreversible de la vista de ambos ojos, causada por accidente o enfermedad aguda. Deberá estar certificada clínicamente por un médico oftalmólogo.</fo:block>									
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">10. Quemaduras graves: Las quemaduras de tercer grado que abarquen a lo menos el veinte por ciento (20%) de la superficie corporal, medidas por la regla de los nueve (9) de la Carta de Superficie Corporal de LUND Y BROWDER, diagnosticada por médico especialista</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">2.- Accidentes Personales </fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">A)<fo:inline text-decoration="underline">Muerte Accidental:</fo:inline>En virtud de esta cobertura la compañía aseguradora pagará a los beneficiarios el monto especificado en las Condiciones Particulares de la póliza, en la forma, tiempo, periodicidad y condiciones estipuladas en las mismas, una vez recibidas y aprobadas las pruebas de que el fallecimiento del asegurado se produjo durante la vigencia de esta cobertura o dentro de algún periodo temporal de cobertura o dentro de la zona geográfica definida en caso de haberlo así solicitado el contratante, como consecuencia directa e inmediata de un accidente. Queda expresamente establecido que el asegurado podrá instituir como beneficiario a cualquier persona. Se entenderá como fallecimiento inmediato aquel que ocurra a más tardar dentro de los sesenta (60) días siguientes de ocurrido el accidente. Si el asegurado falleciera como consecuencia de algún accidente, la compañía aseguradora deducirá de la suma a pagar bajo esta cobertura, el importe total que hubiere abonado al asegurado por el mismo accidente bajo la cobertura B, en caso de haber sido contratada. </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Ampliaciones de cobertura:</fo:block>				
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra j) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento, lesiones, cirugías u hospitalizaciones por accidente, cuando éste se haya originado, se asocie o sea consecuencia de: Desempeñarse el asegurado como piloto o tripulante de aviones civiles o comerciales.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra I) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento se produce a causa de un hecho negligente o imprudente.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra d) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento se produce en vuelos CHARTER</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra c) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento se produce  por movimientos sísmicos desde el grado 8 inclusive en la escala de Mercalli, determinado por el Servicio Sismológico del Departamento de Geofísica de la Universidad de Chile o del servicio que en el futuro lo reemplace.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">B.1)<fo:inline text-decoration="underline">Desmembramiento</fo:inline>: En virtud de esta cobertura y cuando la lesión sufrida a consecuencia de un accidente no ocasione el fallecimiento del asegurado, sino que produzca alguna de las pérdidas que a continuación se indican, y siempre que éstas se manifiesten antes de los noventa (90) días contados desde su ocurrencia y siempre que haya tenido lugar durante la vigencia de esta cobertura o dentro de algún periodo temporal de cobertura o dentro de la zona geográfica determinada en caso de haberlo así solicitado el contratante, la compañía aseguradora indemnizará al asegurado los siguientes porcentajes del monto asegurado indicado en las condiciones particulares de la póliza para esta cobertura: </fo:block>			
								
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 100% en caso de pérdida total de los dos ojos, o de ambos miembros superiores (brazos), o de las dos manos, o de ambos miembros inferiores (piernas), o de los dos pies, o de un miembro inferior (pierna) y de una mano o un brazo; </fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 50% por la pérdida de uno de los miembros superiores (brazos), o uno de los miembros inferiores (pierna), o de una mano o por la sordera completa de ambos oídos, por la ceguera total de un ojo en caso de que el asegurado ya hubiera tenido ceguera total del otro antes de contratar este seguro;</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 40% por pérdida de un pie; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 35% por la ceguera total de un ojo;</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 25% por la sordera completa de un oído en caso de que el asegurado ya hubiera tenido sordera completa de otro, antes de contratar este seguro; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 20% por la pérdida de un pulgar; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 15% por la pérdida total del índice derecho e izquierdo.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 13% por la sordera completa de un oído; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 5% por la pérdida total de cualquiera de los demás dedos de la mano; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 3% por la pérdida total de un dedo del pie;</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La pérdida de cada falange, se calculará en forma proporcional. La indemnización por la pérdida total o parcial de varios dedos, se determinará sumando el porcentaje asignado a cada uno de los dedos o falanges perdidos. La pérdida funcional total y absoluta de cualquier miembro, se considerará como pérdida efectiva del mismo.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En el caso de ocurrir más de un siniestro cubierto por la póliza durante la vigencia de ésta, los porcentajes a indemnizar se calcularán sobre la base del monto asegurado y no al saldo de éste, después de haber efectuado otros pagos. Sin embargo, el total de indemnizaciones provenientes de desmembramientos por uno o más accidentes cubiertos por la póliza, no podrá, en ningún caso, exceder del 100% del monto asegurado.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">B.2)<fo:inline text-decoration="underline">Incapacidad Total y Permanente</fo:inline>En virtud de esta cobertura y cuando como resultado de lesiones producto de un accidente cubierto por esta póliza en los términos señalados, el asegurado se encontrare dentro de los noventa días contados desde la fecha del accidente, salvo que en las condiciones particulares se estipule un plazo mayor, total y permanentemente incapacitado e impedido de desempeñar cualquier ocupación o de emprender cualquier trabajo o negocio lucrativo, la compañía aseguradora pagará, previa determinación que dicha incapacidad sea total, continua y permanente, el porcentaje de la suma asegurada bajo esta cobertura que haya sido definido en las Condiciones Particulares, menos cualquier otra suma pagada o pagadera bajo los términos de esta cobertura y el saldo mientras el asegurado esté vivo en el número de cuotas y periodicidad que se indique en las Condiciones Particulares. Para efectos de esta cobertura, y se tendrá como fecha de declaración de la invalidez total y permanente la fecha en que se notificó a la Compañía la ocurrencia del accidente cubierto por esta póliza.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En caso de que la Compañía Aseguradora determine el rechazo de la indemnización por no producirse la Invalidez total y permanente, el Asegurado dentro de los diez (10) días hábiles siguientes a dicha comunicación podrá requerir que la invalidez sea evaluada por una Junta Médica compuesta por tres médicos cirujanos, elegidos por el asegurado, de entre una nómina de cinco o más médicos propuestos por la Compañía Aseguradora, los que deberán encontrarse ejerciendo, o que hayan ejercido por al menos un año como miembros titulares de las Comisiones Médicas Regionales o de la Comisión Médica Central de la Superintendencia de Pensiones.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Rigen exclusiones del artículo 6° del POL 3 2013 0409 y que se resumen a continuación:</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Guerra, b) Participación en peleas o riñas, c) Participación en actos delictivos, conmoción civil, terrorismo, entre otros, d) Suicidio, intento de suicidio o heridas autoinfligidas, e) Prestación de servicios en Fuerzas Armadas o funciones policiales, f) Participación en carreras, competencias remuneradas, g) Intoxicación, drogas, h) Conducción en estado de ebriedad, i) Negligencia o imprudencia, j) Actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos, que hayan sido declarados por el asegurado al momento de contratar el seguro y de lo cual haya quedado constancia en las Condiciones Particulares. A vía de ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros, k) Desempeñarse como piloto o tripulante de aviones l) Riesgos nucleares o atómicos, m) Sismos desde grado 8, n) Viaje o vuelo en vehículo aéreo de cualquier clase, excepto como pasajero en uno sujeto a itinerario.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">3.- Fractura accidental de huesos</fo:inline></fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En virtud de esta cobertura, y cuando como resultado inmediato y directo de un accidente al asegurado se le diagnosticare la fractura de uno o más de los huesos individualizados a continuación, la Compañía Aseguradora pagará al asegurado el monto indicado para cada caso: 1) Columna (vertebras); 2) Hombro (humero; clavícula, omoplato); 3) Cadera (pelvis); 4) Codo (articulación); 5) Fémur; 6) Tibia; 7) Peroné; 8) Pie (astrágalo, cuñas, metatarsianos); 9) Parrilla Costal (costilla, esternón): 10) Rótula.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Rigen exclusiones del artículo 4° del POL 3 2013 0085 y que se resumen a continuación:</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Guerra, b) Participación en peleas o riñas, c) Participación en actos delictivos, conmoción civil, terrorismo, entre otros, d) Suicidio, intento de suicidio o heridas autoinfligidas, e) Prestación de servicios en Fuerzas Armadas o funciones policiales, f) Participación en carreras, competencias remuneradas, g) Intoxicación, drogas, h) Conducción en estado de ebriedad, i) Negligencia o imprudencia,  j) Actividad o deporte riesgoso, considerándose como tales aquellos que objetivamente constituyan una flagrante agravación del riesgo o se requiera de medidas de protección o seguridad para realizarlos. A vía de ejemplo y sin que la enumeración sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, minería subterránea, trabajos en altura o líneas de alta tensión, inmersión submarina, piloto civil, paracaidismo, montañismo, alas delta, benji, parapente, carreras de auto y moto, entre otros, k) Actividad o deporte excluido en las condiciones particulares, l) Desempeñarse como piloto o tripulante de aviones m) Riesgos nucleares o atómicos n) Sismos desde grado 8, o) Viaje o vuelo en vehículo aéreo de cualquier clase, excepto como pasajero en uno sujeto a itinerario, p) Quemaduras por sol o rayos ultravioletas con fines estéticos, q) Fracturas por osteoporosis.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline>El monto asegurado para las coberturas Enfermedades Graves, Accidentes Personales y Fractura, corresponde al valor de la cuota pactada, con un máximo de 6 cuotas sin tope por cada cuota durante toda la vigencia del seguro. </fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline>Las coberturas de Accidentes Personales y Fracturas Accidental de Huesos regirán desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento original del crédito de acuerdo a las condiciones pactadas en el momento del curse del crédito que se está utilizando como medio de pago. La cobertura Enfermedades graves se inicia transcurridos 60 días corridos desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento original del crédito de acuerdo a las condiciones pactadas en el momento del curse del crédito que se está utilizando como medio de pago.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En el evento de prepagarse el crédito, subsistirá el o los seguro(s), a menos que el asegurado desista de él en forma expresa en ese mismo acto o en un acto posterior.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline>Banco de Crédito e Inversiones hasta la concurrencia de su interés en el monto asegurado al momento de producirse el siniestro.  El saldo de la indemnización, si la hubiera, se pagará al asegurado o sus beneficiarios en caso de fallecimiento.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline>Asociado a la Enfermedad Grave el interés asegurable corresponde a la merma que se genera en el ingreso familiar dado el pago de los gastos médicos. En caso de fallecimiento y fractura el interés asegurable por parte del Asegurado corresponde a su propia vida e integridad personal.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia:</fo:inline>La edad más el plazo del crédito no puede superar los 78 años 0 días.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad:</fo:inline>Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>			

						</fo:table-cell >
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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>

			</xsl:if>

			  <xsl:variable name="primBrutaSegCesantia" select="OperacionCredito/primaBrutaCesantiaInvoluntaria" />
			  <xsl:if  test="$primBrutaSegCesantia &gt; 0">

                <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>


                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

			              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO CESANTÍA</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compañía Aseguradora: </fo:inline> BCI Seguros Generales S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> (POL 1 2013 0122 Riesgos A y B)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">De acuerdo a las Condiciones señaladas en las Condiciones Particulares, la Compañía indemnizará al beneficiario con el pago de los montos contratados si ocurre alguno de los siguientes eventos:</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">A. DESEMPLEO INVOLUNTARIO DEL ASEGURADO</fo:inline></fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Esta póliza cubre los casos de cesantía involuntaria del trabajador. Esta cobertura podrá ser contratada por:</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">a) Trabajadores Dependientes con contrato a plazo indefinido.</fo:inline> Se considerarán única y exclusivamente como causales de cesantía involuntaria las siguientes: i) las causales de los números 1 y 6 del artículo 159 del Código del Trabajo, esto es, Mutuo acuerdo entre las partes-siempre que el asegurado tenga derecho al pago de la indemnización por años de servicio y que así se exprese en el finiquito y caso fortuito o fuerza mayor, respectivamente ii) Artículo 161 del Código del Trabajo, esto es, necesidades de la empresa</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">b) Funcionario de Administración Pública sometido a estatuto administrativo.</fo:inline> La cesantía será cubierta por la presente póliza, única y exclusivamente, si se produce por alguna de las siguientes causales: i) Funcionarios de Planta: a) Supresión del empleo (art.146 letra e) del estatuto administrativo. b) Término del período legal (art.146 letra f) del estatuto administrativo. ii) Personal a contrata: No renovación del contrato una vez finalizado el plazo.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">c) Profesional de la educación sometido a estatuto docente.</fo:inline> La cesantía de los profesionales de la educación vinculados laboralmente y bajo régimen de subordinación y dependencia a la educación municipalizada, sometidos al Estatuto Docente por circunstancias contempladas en sus estatutos, siempre que no sean imputables al actuar o a la voluntad del asegurado y que implique la privación total de ingresos por conceptos laborales.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">d) Miembros Fuerzas Armadas y de Orden.</fo:inline> La cesantía de los miembros de las Fuerzas Armadas y de Orden será cubierta por la póliza si se produce por alguna causal de retiro temporal o absoluto contempladas en sus respectivas Leyes Orgánicas, Estatutos y Reglamentos de Personal, pero sólo si causal de cesantía invocada cumpla con lo siguiente: 1.que el retiro o baja se deba a causa no imputable a la voluntad o a la conducta del miembro de las Fuerzas Armada y de Orden, 2.que el retiro o baja no implique para el integrante retirado o dado de baja el pago de una pensión o jubilación por dicho concepto.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">B. INCAPACIDAD TEMPORAL A CONSECUENCIA DE ENFERMEDAD Y/O ACCIDENTE,</fo:inline> esta póliza cubre los casos de asegurados en calidad de trabajador independiente y que cause el otorgamiento de una licencia médica de reposo superior a 30 días.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Materia Asegurada: </fo:inline> Corresponderá  a las cuotas mensuales pactadas.  En caso que el crédito que dio origen a este seguro hubiere sido prepagado, la materia asegurada corresponderá a una suma de dinero mensual de libre disposición para el asegurado, de igual monto a la cuota del crédito original.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline>   El monto asegurado corresponde a un monto equivalente al valor de la cuota pactada originalmente en el que crédito que se utilizó como medio de pago con un tope de UF 62,5 por cada cuota. Para los créditos de hasta 49 meses, el seguro cubrirá un máximo de 3 (tres) cuotas durante toda la vigencia del seguro. </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Para los créditos de vigencia de 50 meses y más, el seguro cubrirá un máximo de 5 (cinco) cuotas durante toda la vigencia del seguro. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Para la cobertura de incapacidad temporal, el número de cuotas a indemnizar se regirá de acuerdo al tiempo en reposo:</fo:block>    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De   31 a   60 días: 1 cuota</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De   61 a   90 días: 2 cuotas</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De   91 a 120 días: 3 cuotas</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De 121 a 150 días: 4 cuotas</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De 151 a 180 días: 5 cuotas (solo para plazos de 50 meses o más)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De 181 o más días: 6 cuotas (solo para plazos de 50 meses o más)</fo:block>                                                                                                            
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Proceso de liquidación de las cuotas</fo:inline></fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Frente a un denuncio de cesantía de un asegurado, la compañía de seguros verificara que se cumpla con las condiciones de cobertura que permitan liquidar el siniestro y generar el pago del monto asegurado con las cuotas del crédito que correspondan indemnizar.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">El mes de pago de la primera cuota se regirá de acuerdo al siguiente criterio de liquidación: 1. Si la fecha de finiquito, de la relación laboral del asegurado, generando su cesantía, es igual o menor a la fecha de pago de la cuota del crédito (en el mes que quedo cesante), la compañía indemnizara la cuota 1 a contar del mes siguiente de su cesantía. 2. Si la fecha de finiquito, de la relación laboral del asegurado, generando su cesantía, es Mayor a la fecha de pago de la cuota del crédito (en el mes que quedo cesante), la compañía indemnizara la cuota 1 a contar del mes subsiguiente de su cesantía.</fo:block>									
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Crédito e Inversiones, hasta la concurrencia de su interés en el monto asegurado al momento de producirse el siniestro.  El saldo de la indemnización, si lo hubiera, se pagará al asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Interés Asegurable: </fo:inline> El interés asegurable por parte del asegurado es el cumplimiento de sus obligaciones y compromisos.  Respecto del beneficiario tiene interés asegurable en tanto éste es el acreedor.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regirá desde la fecha en que el banco otorga efectivamente el crédito y la Compañía Aseguradora acepta asumir el riesgo, hasta el vencimiento original del crédito de acuerdo a las condiciones pactadas en el momento del curse del crédito que se está utilizando como medio de pago.  La vigencia de esta cobertura no se terminará necesariamente con el prepago del crédito que se utilizó como medio de pago, dando la opción al asegurado de mantener, en el mismo acto, el seguro hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el término del seguro. Con la emisión de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir únicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la póliza. El asegurador señalará la aceptación y/o rechazo de esta en un plazo máximo de 5 días hábiles a partir de la recepción de la propuesta, declaración personal de salud y de la totalidad de los exámenes solicitados por la Compañía</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad límite de ingreso y permanencia: </fo:inline> 65 años 364 días</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> No tiene</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Periodo de actividad mínima para invocar al seguro: </fo:inline> 6 meses con contrato indefinido con un mismo empleador.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Plazo Máximo de presentación de antecedentes: </fo:inline> Para la acreditación inicial del siniestro, en caso de trabajadores dependientes el plazo será 180 días corridos contados desde la fecha de término de la relación laboral o fecha de inicio de licencia médica para trabajadores independientes. Posteriormente, para cobrar las cuotas siguientes el plazo es de 45 días corridos posteriores a la fecha de facturación de cada cuota reclamada.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Prima máxima Bruta Total (UF): </fo:inline> se define para el seguro de Cesantía involuntaria para todos los Plazos una prima máxima a cobrar al cliente de  UF 83,30.</fo:block>
									 <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Las primas indicadas son referenciales. En caso que la aseguradora decida evaluar el riesgo específico, ello podría generar un cambio de las condiciones de aseguramiento y el aumento de la prima, sin perjuicio de su derecho a no otorgar en definitiva la cobertura solicitada.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Rigen exclusiones del artículo 5° del POL 1 2013 0122 y que se resumen a continuación:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Para cobertura de desempleo, no se cubrirán causales de cesantía distintas a las señaladas en artículo 3 letra A del condicionado general,</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">b) Para cobertura de incapacidad temporal, no se cubrirá cuando la causal de incapacidad sea producto de. </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;a.	Reposo o licencia de embarazo,</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;b.	Incapacidades de origen nervioso y enfermedades de la espalda,</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;c.	Participación en actos temerarios o deportes riesgosos, </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;d.	Enfermedades preexistentes.</fo:block>
									
						 </fo:table-cell >
                                                                  

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
              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
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

              </fo:flow>
              </fo:page-sequence>

			</xsl:if>


            <fo:page-sequence master-reference="miCarta">
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >COLOCACIONES PARA CREDITO DE CONSUMO</fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block >
                                      <fo:external-graphic  width="5cm" height="1cm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="OperacionCredito/logoBciCorredoresSeguros"/>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio Nº<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
              
              <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                  
                            <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">AUTORIZACIÓN:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Autorizo al Banco para remitir a Bci Seguros Vida S.A., Bci Seguros Generales S.A. y/o Bci Corredores de Seguros S.A. la información pertinente a los montos de los créditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y demás que fuere menester para dichas operaciones, según lo solicitaren dichas compañías.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro recibir en el acto un duplicado del documento individualizado y acepto las condiciones de asegurabilidad descritas.</fo:block>
                            <fo:leader leader-pattern="space" leader-length="17cm"/>
                            <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">DIVERSIFICACION DE PRODUCCION (Art.57 DFL 251):</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La información sobre la diversificación de esta corredora, de las entidades aseguradoras con que haya trabajado y de las pólizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a su disposición en www.bci.cl</fo:block>
                            
                           </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              
	<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>             
            <fo:table border-collapse="collapse">
                  <fo:table-column  />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >INFORMACION DE LAS COMISIONES PAGADAS POR COLOCACIÓN DE ESTOS SEGUROS</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>               



              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="196mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >                                    
                                    <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="center" background-color="#BDBDBD">CONDICIONES DEL SEGURO</fo:block>
                                    <fo:leader leader-pattern="space" leader-length="17cm"/>                                    
                                    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">ANEXO: DETALLE DE COMISIONES</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

          	<fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="116mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="80mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>

                  <fo:table-body>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Comisión de recaudación (Receptor Banco Bci)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="0mm" line-height="4.5mm">UF 0,03 + IVA por recaudación</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Valija documentos (Receptor Banco Bci)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">$ 400 + IVA por seguro</fo:block>
                            </fo:table-cell>
                      </fo:table-row>

                </fo:table-body>
              </fo:table>
			  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="116mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >                                    
				    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">&#160;</fo:block>                
                                    <fo:block   border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="center" background-color="#BDBDBD">Producto</fo:block>                               
                                    <fo:leader leader-pattern="space" leader-length="17cm"/>                                    
                                    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">&#160;</fo:block>
				     <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">&#160;</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >                                    
                                    <fo:block  border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="center" background-color="#BDBDBD">Bci Corredores de</fo:block>
                                    <fo:leader leader-pattern="space" leader-length="17cm"/>                                    
                                    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">Seguros Intermediación</fo:block>
	<fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">&#160;</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >                                    
				    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">&#160;</fo:block>							
                                    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="center" background-color="#BDBDBD">Banco Bci</fo:block>
                                    <fo:leader leader-pattern="space" leader-length="17cm"/>                                    
                                    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">Uso de canal</fo:block>
				    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">&#160;</fo:block>
                            </fo:table-cell>
                                                                                                                
                      </fo:table-row>
                </fo:table-body>
              </fo:table>   
                         
          	  <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="116mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
				  <fo:table-column column-width="40mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>

                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Desgravamen (POL 2 2013 0331 CAD 2 2013 1138 )</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="0mm" line-height="4.5mm">25,0%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="0mm" line-height="4.5mm">14,8%</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Cesantía Involuntaria (POL 1 2013 0122)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block border-top="0.5pt solid black"  font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">15,0%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">14,8%</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Doble Capital (POL 2 2013 0055 CAD 3 2013 0060)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">15,0%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block border-top="0.5pt solid black" border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="4.5mm">14,8%</fo:block>
                            </fo:table-cell>
                      </fo:table-row>  
					     <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.1mm">Seguro Salud Protegida (POL 3 2013 0507, POL 3 2013 0409 A, B1 y B2, POL 3 2013 0085 - Alt. L).</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="8mm">15,0%</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                      <fo:block  border-bottom="0.5pt solid black" font-family="Helvetica" font-size="11pt"   text-align="center"  margin-left="0mm" line-height="8mm">14,8%</fo:block>
                            </fo:table-cell>
                      </fo:table-row>  
					  
                </fo:table-body>
              </fo:table>
                            
                                                              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

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
                                        <fo:block line-height="4.5mm"><fo:leader leader-pattern="space" leader-length="10mm" /><xsl:value-of select="OperacionCredito/fechaSuscripcion"/></fo:block>
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
                                                  <xsl:value-of select="OperacionCredito/logoFirmaCorredor"/>
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

              <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
              <fo:table table-layout="fixed" display-align="center">
                <fo:table-column column-width="100mm"/>
                <fo:table-column column-width="85mm"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="left">
                          Seguros Cliente Protegido para Créditos de Consumo
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block font-weight="bold" text-align="right">
                          <fo:inline text-align="right">Pag. <fo:page-number/> de <fo:page-number-citation ref-id="final"/></fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              </fo:block>
              <fo:block id="final"/> 
             </fo:flow>
             
             </fo:page-sequence>
             
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
