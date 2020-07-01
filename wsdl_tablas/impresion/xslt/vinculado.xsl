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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>ASEGURABLE (S�lo personas naturales)</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Tel�fono:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DireccionDeudorBci/fono" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Nro. Operaci�n:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" text-align="left" margin-left="1mm" line-height="4.5mm">Monto del Cr�dito responsabilidad del asegurable:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

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
                                    <fo:block  font-family="Helvetica" font-size="11pt" text-align="left"   line-height="4.5mm" margin-left="1mm">Vigencia Operaci�n: Desde <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/vigenciaOperacionDesde" /></fo:inline></fo:block>
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
                                    <fo:block border-top="0.5pt solid black"  font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Cesant�a Involuntaria  (POL 1 2013 0122, Riesgos A y B)</fo:block>
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
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/>BENEFICIARIOS SEGURO DOBLE CAPITAL Y/O ACCIDENTES PERSONALES (S�lo en caso de seleccionar Doble Capital y/o Accidentes Personales)</fo:block>
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
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">Nombre completo o Raz�n Social</fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                                    <fo:block   border-top="0.5pt solid black" font-family="Helvetica" font-size="11pt" text-align="left" font-weight="bold" line-height="4.5mm"  ><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">% Distribuci�n</fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">En caso que el asegurado no designe beneficiarios, �stos ser�n los herederos legales</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm"><fo:inline font-weight="bold">FORMA DE PAGO</fo:inline>: Autorizo que el monto de las primas correspondientes a los seguros elegidos, sean cargados en el pago del cr�dito solicitado, bajo el Nro. de Operaci�n <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" />  </fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-bottom="0.5pt solid black"  border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Con la emisi�n de la presente propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que esta propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de esta propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a.</fo:block>
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
                        Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD"><fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>COMUNICACIONES Y ENV�O DE INFORMACI�N</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                   <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">El contratante y/o asegurado facultan expresamente a la Compa��a, para que �sta les env�e la copia de su p�liza y dem�s documentos que forman parte integrante de la misma a la direcci�n de correo electr�nico se�alado en este instrumento, hecho lo cual se considerar� haberse dado debido cumplimiento a lo dispuesto en el art�culo 519 del C�digo de Comercio. Sin perjuicio de lo anterior, el contratante y/o asegurado podr�n siempre solicitar una copia de la misma impresa en papel en el domicilio de la Compa��a.</fo:block>
                                   <fo:block font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Finalmente, el contratante y/o asegurado facultan a la compa��a para enviar a la direcci�n de correo electr�nico se�alada en este instrumento todas las comunicaciones previstas en el Decreto Supremo N� 1055, en especial, aquellas que digan relaci�n con el procedimiento de liquidaci�n de siniestros.</fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">BCI SEGUROS VIDA S.A bajo la condici�n de veracidad de la declaraci�n de salud y dem�s declaraciones formuladas en la presente propuesta, suscrita con esta fecha, asegura provisoriamente por el riesgo de fallecimiento accidental de acuerdo a las condiciones generales de la p�liza POL 3 2013 0409 plan A. El capital asegurado para efecto de esta cobertura provisoria ser� el menor valor entre UF 1.000 y el monto indicado en la propuesta para dicho riesgo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La cobertura otorgada por el presente certificado tendr� vigencia a contar de la fecha en que se reciba en oficinas de la compa��a la prima del seguro propuesto y hasta la fecha de aceptaci�n o rechazo definitivo del riesgo por parte de la compa��a, dentro de los pr�ximos 30 d�as. Para estos, no se entender� percibida la prima por el solo hecho de haber sido entregada al corredor de seguros. En caso de rechazo, la compa��a comunicar� por escrito al contratante, devolviendo la prima en dep�sito recibida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Es condici�n esencial que toda informaci�n entregada por el cliente sea fidedigna, entendi�ndose que toda declaraci�n falsa err�nea o reticente que contenga los antecedentes proporcionados en la propuesta y en la declaraci�n personal de Salud, faculta a BCI SEGUROS VIDA S.A. para rescindir este seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Este certificado no tendr� validez si el asegurable ya se encontrare amparado por la cobertura provisoria asociada a otra propuesta de seguro de esta compa��a.</fo:block>
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
                        Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Base: </fo:inline> Desgravamen (POL 2 2013 0331)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Adicional: </fo:inline> Invalidez Permanente dos Tercios (CAD 2 2013 1138)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La Compa��a Aseguradora se reserva el derecho de aceptar o rechazar una o ambas coberturas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponder� al saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento o de la resoluci�n de invalidez, m�s los intereses devengados al cierre del mes inmediatamente anterior, menos las cuotas atrasadas por m�s de 30 d�as,las cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento o de la resoluci�n de invalidez.-</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento del cr�dito. La vigencia de esta cobertura se terminar� con el prepago del cr�dito. Con la emisi�n de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de la propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Cr�dito e Inversiones</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable por parte del Asegurado corresponde a su propia vida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Respecto del beneficiario tiene inter�s asegurable en tanto �ste es el acreedor.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 78 a�os 0 d�as para desgravamen y 65 a�os 0 d�as para la cobertura de Invalidez permanente dos tercios.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: Para cobertura de fallecimiento</fo:inline> rigen exclusiones del art�culo 5� del POL 2 2013 0331 y que se resumen a continuaci�n: a) Suicidio o autolesi�n; b) pena de muerte; c) acto delictivo; d) guerra o conmoci�n contra el orden p�blico; e) participaci�n en acto terrorista; f) participaci�n en acto temerario; g) realizaci�n de actividad o deporte riesgoso; h) enfermedad preexistente; i) riesgo nuclear; j) infecci�n oportun�stica, o un neoplasma maligno, si al momento de la muerte el asegurado sufr�a SIDA.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Para cobertura de Invalidez</fo:inline> rigen exclusiones del art�culo 3� del CAD 2 2013 1138  y que se resumen a continuaci�n: a) intento de suicidio o autolesi�n y b)estado de ebriedad o bajo efecto de drogas.</fo:block>
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Base: </fo:inline> Muerte (POL 2 2013 0055) </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura Adicional: </fo:inline> Invalidez Permanente dos Tercios (CAD 3 2013 0060)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La Compa��a Aseguradora se reserva el derecho de aceptar o rechazar una o ambas coberturas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> En el caso de que el cr�dito est� vigente, el monto asegurado corresponder� al saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento o de la resoluci�n de invalidez permanente dos tercios m�s los intereses devengados al cierre del mes inmediatamente anterior, menos las cuotas atrasadas por m�s de 30 d�as, las cuotas en cartera vencida y/o castigada, las cuotas prepagadas no aplicadas en el saldo insoluto del cr�dito al cierre del mes anterior al del fallecimiento o de la resoluci�n de invalidez permanente dos tercios.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento del cr�dito. La vigencia de esta cobertura se terminar� con el prepago del cr�dito que se utiliz� como medio de pago. Con la emisi�n de la  propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de la propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Para cobertura de muerte ser�n los designados por el Asegurado y en caso de no existir designaci�n ser�n los herederos legales. Para cobertura de invalidez permanente dos tercios ser� el asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable por parte del Asegurado corresponde a su propia vida.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 75 a�os 0 d�as para cobertura de fallecimiento y 65 a�os 0 d�as para la cobertura de Invalidez Permanente dos tercios.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: Para cobertura de fallecimiento</fo:inline> rigen exclusiones del art�culo 5� del POL 2 2013 0331 y que se resumen a continuaci�n: a) Suicidio o autolesi�n; b) pena de muerte; c) acto delictivo; d) guerra o conmoci�n contra el orden p�blico; e) participaci�n en acto terrorista; f) participaci�n en acto temerario; g) realizaci�n de actividad o deporte riesgoso; h) enfermedad preexistente; i) riesgo nuclear; j) infecci�n oportun�stica, o un neoplasma maligno, si al momento de la muerte el asegurado sufr�a SIDA.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold"> Para cobertura de Invalidez permanente dos tercios</fo:inline>, rigen exclusiones del art�culo 3� del CAD 3 2013 0060 y que se resumen a continuaci�n: a) intento de suicidio; b) participaci�n en actos temerarios; c) pr�ctica de deportes riesgosos; d) pr�ctica de actividad riesgosa; e) estado de ebriedad o bajo efecto de drogas; f) viajes a�reos en vuelos no regulares, g) enfermedades preexistentes.</fo:block>  
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
			  
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO RENTA POR HOSPITALIZACI�N</fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Renta por Hospitalizaci�n  (POL 3 2013 0502)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponde a un monto equivalente al valor de la cuota pactada originalmente en el cr�dito que se utiliz� como medio de pago, y ser� con un m�ximo de seis cuotas con un tope de UF 50 por cada cuota, durante toda la vigencia del seguro. Los l�mites de indemnizaci�n se definen de acuerdo al per�odo de hospitalizaci�n siguiente: de 4 a 30 d�as,  1 cuota; de 31 a 60 d�as, 2 cuotas; de 61 a 90 d�as, 3 cuotas; de 91 a 120 d�as, 4 cuotas; de 121 a 150 d�as, 5 cuotas; de 151 a 180, d�as 6 cuotas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento original del cr�dito de acuerdo a las condiciones pactadas en el momento del curse del cr�dito que se est� utilizando como medio de pago.  La vigencia de esta cobertura no se terminar� necesariamente con el prepago del cr�dito que se utiliz� como medio de pago, dando la opci�n al asegurado de mantener, en el mismo acto, el seguro hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el t�rmino del seguro. Con la emisi�n de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de la propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Cr�dito e Inversiones hasta la concurrencia de su inter�s en el monto asegurado al momento de producirse el siniestro.  El saldo de la indemnizaci�n, si la hubiera, se pagar� al asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable corresponde a la merma que se genera en el ingreso familiar dado el pago de los gastos m�dicos asociados a la hospitalizaci�n.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 75 a�os 0 d�as.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline> 60 d�as contados desde la fecha de curse del cr�dito de consumo asociado al seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Rigen exclusiones del art�culo 4� del POL 3 2013 0502 y que se resumen a continuaci�n: a) guerra o conmoci�n contra el orden p�blico; b) hospitalizaci�n por tratamiento a la adicci�n de drogas, alcoholismo, enfermedad mental o cirug�a pl�stica c) curas de reposo; d) hospitalizaci�n por embarazo, aborto o enfermedad relacionada a los �rganos de reproducci�n femeninos; e) anomal�as cong�nitas; f) enfermedad preexistente; g) ex�menes m�dicos de rutina; h) intento de suicidio; i) enfermedades directas, oportunistas o secundarias al SIDA; j) diagn�stico por acupunturista, home�pata u otra persona que no sea m�dico.</fo:block>
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Enfermedades Graves  (POL 3 2013 0507). La compa��a pagar� al asegurado bajo esta cl�usula adicional identificado en las Condiciones Particulares, por una sola vez, si el asegurado sobrevive 90 d�as al diagn�stico de una de las siguientes enfermedades e intervenciones: 1) c�ncer; 2) accidente vascular cerebral; 3) infarto al miocardio; 4) revascularizaci�n coronaria (by-pass); 5) insuficiencia renal cr�nica; 6) trasplante de �rganos mayores y 7) par�lisis</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline> El monto asegurado corresponde un monto equivalente  al valor de la cuota pactada originalmente en el cr�dito que se utiliz� como medio de pago y ser� con un m�ximo de seis cuotas con un tope de UF 50 por  cada cuota durante toda la vigencia del seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento original del cr�dito de acuerdo a las condiciones pactadas en el momento del curse del cr�dito que se utiliz� como medio de pago.  La vigencia de esta cobertura no se terminar� necesariamente con el prepago del cr�dito que se utiliz� como medio de pago, dando la opci�n al asegurado de mantener, en el mismo acto, los seguros hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el t�rmino del seguro. Con la emisi�n de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de la propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Cr�dito e Inversiones hasta la concurrencia de su inter�s en el monto asegurado al momento de producirse el siniestro. El saldo de la indemnizaci�n, si lo hubiera, se pagar� al asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable corresponde a la merma que se genera en el ingreso familiar dado el pago de los gastos m�dicos asociados a la enfermedad.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 75 a�os 0 d�as.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> Constituye requisito esencial que el asegurado tenga aceptada sin recargos y vigente la cobertura de fallecimiento del Seguro de Desgravamen.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline> 60 d�as contados desde la fecha de curse del cr�dito de consumo asociado al seguro.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Enfermedades Excluidas: </fo:inline> Las siguientes enfermedades o intervenciones no ser�n cubiertas: 1) Esclerosis m�ltiple; 2) p�rdida de miembros; 3) ceguera; 4) p�rdida de audici�n; 5) cirug�a de v�lvulas card�acas; 6) injerto a�rtico; 7) angioplastia con bal�n; 8) Alzheimer; 9) Parkinson; 10) distrofia muscular; 11) politraumatismo; 12) quemaduras graves; y 13) neurocirug�a.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones Generales: </fo:inline> Rigen exclusiones del art�culo 4� del POL 3 2013 0507 y que se resumen a continuaci�n: a) SIDA o VIH; b) Leucemia linfoc�tica cr�nica; c) suicidio, enfermedad intencionalmente causada, lesiones autoinfligidas; d) ri�as; e) riesgos nucleares; f) padecimientos cong�nitos; g) trasplantes de investigaci�n; h) intoxicaci�n o bajo los efectos de drogas; i) conducci�n en estado de ebriedad; j) enfermedades preexistentes.</fo:block>
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Vida S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline text-decoration="underline" font-weight="bold">Coberturas y Montos Asegurados: </fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">A) Muerte Accidental</fo:inline> (POL 3 2013 0409 Letra A) con Capital Asegurado de UF 200</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">B) Desmembramiento e Incapacidad Total y Permanente por Accidente</fo:inline> (POL 3 2013 0409  Letra B) con capital asegurado de UF 200</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">C) Renta Mensual por Accidente C�nyuge</fo:inline> (POL 3 2013 0409 Letra C) La compa��a aseguradora pagar� al c�nyuge del asegurado, como beneficiario de esta cobertura, un monto mensual de UF 5 durante 6 meses en caso de fallecimiento del asegurado titular como consecuencia directa e inmediata de un accidente cubierto por esta p�liza.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Para cobertura de muerte accidental y renta mensual por accidente ser�n los designados por el asegurado y en caso de no existir designaci�n ser�n los herederos legales.  Para cobertura de desmembramiento e incapacidad total y permanente por accidente ser� el asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable por parte del asegurado corresponde a su propia vida e integridad personal.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento original del cr�dito de acuerdo a las condiciones pactadas en el momento de curse de cr�dito que se est� utilizando como medio de pago. La vigencia de esta cobertura no se terminar� necesariamente con el prepago del cr�dito que se utiliz� como medio de pago, dando la opci�n al asegurado de mantener, en el mismo acto, el seguro hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el t�rmino del seguro. Con la emisi�n de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de la propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 75 a�os 0 d�as </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de Asegurabilidad: </fo:inline> No tiene.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Carencia: </fo:inline> No tiene.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Rigen exclusiones del art�culo 6� del POL 3 2013 0409 y que se resumen a continuaci�n: a) guerra; b) participaci�n en peleas o ri�as; c) participaci�n en actos delictivos, conmoci�n civil, terrorismo entre otros; d) suicidio, intento de suicidio o heridas autoinfligidas; e) prestaci�n de servicios en Fuerzas Armadas o funciones policiales; f) participaci�n en carreras, competencias remuneradas; g) intoxicaci�n, drogas; h) conducci�n en estado de ebriedad; i) negligencia o imprudencia; j) riesgos nucleares o at�micos; k) sismos desde grado 8.</fo:block>
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
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
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Generales S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> Enfermedades Graves (POL 3 2013 0507), Accidentes Personales (POL 3 2013 0409 riesgos A, B1 y B2), Fracturas (POL 3 2013 0085 Alt L)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">1.- Enfermedades Graves </fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La compa��a pagar� al asegurado bajo esta cobertura identificada en estas Condiciones Particulares, por una sola vez, si el asegurado es diagnosticado de una de las siguientes enfermedades e intervenciones:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1) C�ncer; 2) Accidente vascular cerebral; 3) Infarto al miocardio; 4) Revascularizaci�n coronaria (by-pass); 5) Insuficiencia renal cr�nica; 6) Trasplante de �rganos mayores; 7) Par�lisis; 8) Esclerosis m�ltiple; 9) Ceguera; 10) Quemaduras graves</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline text-decoration="underline">Enfermedades excluidas:</fo:inline> Las siguientes enfermedades o intervenciones no ser�n cubiertas. 1)  P�rdida de miembros; 2) P�rdida de audici�n; 3) Cirug�a de v�lvulas card�acas; 4) Injerto a�rtico; 5) Angioplastia con bal�n; 6) Alzheimer; 7) Parkinson; 8) Distrofia muscular; 19) Politraumatismo;10) Neurocirug�a. Adem�s de las exclusiones antes mencionadas, no estar�n cubiertas por la p�liza las situaciones o enfermedades que tengan su causa mediata o inmediata en alguno de los siguientes hechos:</fo:block>  

                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Rigen exclusiones del art�culo 4� del POL 3 2013 0507 y que se resumen a continuaci�n:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Sida o presencia del virus VIH, b) Leucemia linfoc�tica cr�nica, c) Suicidio, tentativa de suicidio o enfermedad intencionalmente causada o lesiones autoinflingidas, ya sea en estado de cordura o demencia, d) Ri�as o alborotos populares en los que hubiere intervenido el asegurado, e) Riesgos nucleares, f) Padecimientos cong�nitos, g) Trasplantes que sean procedimientos de investigaci�n, h) Intoxicaci�n o encontrarse el asegurado bajo los efectos de cualquier narc�tico o droga, i) La conducci�n de cualquier veh�culo por parte del asegurado, encontr�ndose �ste en estado de ebriedad, j) Enfermedades preexistentes.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" text-decoration="underline">Definiciones</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">1. C�ncer: La presencia de uno o m�s tumores malignos, incluyendo entre ellos los diversos tipos de leucemia (excepto la leucemia linfocitico cr�nica) los linfomas y la enfermedad de Hodgkin; caracterizados por el crecimiento incontrolado, la diseminaci�n de c�lulas malignas y la invasi�n y destrucci�n de tejidos normales. El diagn�stico deber� haber sido hecho por un m�dico onc�logo.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Los siguientes c�nceres no est�n cubiertos por la p�liza:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a. Tumores que presenten los cambios malignos caracter�sticos de carcinoma in situ (incluyendo la displasia cervical CIN-1, CIN-2 y CIN-3) o aquellos considerados por histolog�a como premalignos;</fo:block>   
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">b. Melanomas con espesor menor de 1,5 mm, determinado por examen histol�gico, o cuando la invasi�n sea menor del nivel de Clark 3; </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">c. Todas las hiperqueratosis o los carcinomas basocelulares de la piel; </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">d. Todos los carcinomas de piel, c�lulas escamosas, excepto cuando se trate de diseminaci�n de otros �rganos;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">e. Sarcoma de Kaposi y otros tumores relacionados con la infecci�n VIH o SIDA;</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">f. C�nceres de la pr�stata que por histolog�a pertenezcan a la etapa T1 del sistema TNM, desarrollado por la Uni�n Internacional contra el C�ncer (incluyendo T1 (a) o T1 (b) o de cualquier otra clasificaci�n equivalente o menor).</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">2. Accidente vascular cerebral: Cualquier incidente cerebro vascular que d� lugar a secuelas que dure m�s de veinticuatro (24) horas y que incluyan infarto del tejido cerebral, hemorragia y embolismo, todos de una fuente extra craneana. La evidencia del da�o neurol�gico permanente deber� ser confirmada por un neur�logo, como m�nimo doce (12) semanas despu�s del suceso. No se aceptar�n reclamaciones antes de transcurrido ese tiempo. No se considerar�n dentro de la cobertura los s�ntomas cerebrales de migra�a, lesi�n cerebral causada por un traumatismo o hipoxia y enfermedad vascular que afecte al ojo o al nervio �ptico, y las alteraciones isqu�micas del sistema vestibular.  </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">3. Infarto al miocardio: La muerte de una porci�n del m�sculo cardiaco, causada por irrigaci�n inadecuada de la parte afectada y puesta de manifiesto por el t�pico dolor del pecho, la aparici�n de modificaciones electro cardiogr�fica que no exist�an (nuevas) y elevaci�n de las enzimas cardiacas.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">4. Revascularizaci�n coronaria (by-pass): Comprende la que se realiza al menos a dos o m�s arterias coronarias, por consejo de un m�dico especialista en esta cirug�a, para corregir la estenosis u oclusi�n de las arterias coronarias, pero quedan excluidas las t�cnicas no operatorias mediante cirug�a, como la angioplastia, el tratamiento por l�ser o cualquier otro procedimiento no operatorio.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">5. Insuficiencia renal cr�nica: La etapa final de la insuficiencia renal, por fallo funcional, cr�nico e irreversible de ambos ri�ones, que hace necesaria la di�lisis renal sistem�tica o el trasplante renal. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">6. Trasplante de �rganos mayores: El que se realiza al asegurado como receptor del trasplante de un �rgano que puede ser cualquiera de los siguientes: coraz�n, pulm�n, h�gado, ri��n, m�dula �sea o p�ncreas, siempre y cuando el �rgano del asegurado est� o haya estado lesionado o enfermo. La cobertura s�lo comprende el trasplante de todo el �rgano y no de fracciones o partes de �ste, por lo que en el caso del p�ncreas se excluye el trasplante de Islotes de Langerhans. No estar� cubierto el trasplante aut�logo. Ser� requisito indispensable para el pago del beneficio que el asegurado notifique previamente y por escrito a la compa��a aseguradora el hecho de ser definido como candidato a trasplante por la instituci�n hospitalaria o reguladora correspondiente y antes que �ste se realice. Una vez que la compa��a ha sido notificada de este hecho s�lo podr� poner t�rmino al contrato del asegurado que se encuentre en dicha situaci�n si �ste incurriere en alguna causal legal que as� lo permita. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">7. Esclerosis m�ltiple: Diagn�stico inequ�voco de esclerosis m�ltiple, hecho por un neur�logo, en que el paciente deba ser internado en un hospital por esta causa. Deber� haber evidencia de los s�ntomas caracter�sticos de desmielinizaci�n, de anormalidades neurol�gicas persistentes y de deterioro funcional. El diagn�stico deber� confirmarse por investigaciones neurol�gicas (ejemplo: punci�n lumbar, respuestas auditivas y visuales evocadas y evidencia de lesiones del sistema nervioso central).</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">8. Par�lisis: Par�lisis total y permanente, producida por accidente o enfermedad. Deber� haber evidencia del fallo total y permanente de la conductividad de la m�dula espinal por secci�n medular. La conexi�n de tiempo y causa con el da�o deber� ser obvia. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">9. Ceguera: P�rdida total e irreversible de la vista de ambos ojos, causada por accidente o enfermedad aguda. Deber� estar certificada cl�nicamente por un m�dico oftalm�logo.</fo:block>									
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">10. Quemaduras graves: Las quemaduras de tercer grado que abarquen a lo menos el veinte por ciento (20%) de la superficie corporal, medidas por la regla de los nueve (9) de la Carta de Superficie Corporal de LUND Y BROWDER, diagnosticada por m�dico especialista</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">2.- Accidentes Personales </fo:inline></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">A)<fo:inline text-decoration="underline">Muerte Accidental:</fo:inline>En virtud de esta cobertura la compa��a aseguradora pagar� a los beneficiarios el monto especificado en las Condiciones Particulares de la p�liza, en la forma, tiempo, periodicidad y condiciones estipuladas en las mismas, una vez recibidas y aprobadas las pruebas de que el fallecimiento del asegurado se produjo durante la vigencia de esta cobertura o dentro de alg�n periodo temporal de cobertura o dentro de la zona geogr�fica definida en caso de haberlo as� solicitado el contratante, como consecuencia directa e inmediata de un accidente. Queda expresamente establecido que el asegurado podr� instituir como beneficiario a cualquier persona. Se entender� como fallecimiento inmediato aquel que ocurra a m�s tardar dentro de los sesenta (60) d�as siguientes de ocurrido el accidente. Si el asegurado falleciera como consecuencia de alg�n accidente, la compa��a aseguradora deducir� de la suma a pagar bajo esta cobertura, el importe total que hubiere abonado al asegurado por el mismo accidente bajo la cobertura B, en caso de haber sido contratada. </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Ampliaciones de cobertura:</fo:block>				
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra j) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento, lesiones, cirug�as u hospitalizaciones por accidente, cuando �ste se haya originado, se asocie o sea consecuencia de: Desempe�arse el asegurado como piloto o tripulante de aviones civiles o comerciales.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra I) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento se produce a causa de un hecho negligente o imprudente.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra d) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento se produce en vuelos CHARTER</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">. No obstante lo indicado en el Art. 6 letra c) de las exclusiones de las condiciones generales, se extiende la cobertura cuando el fallecimiento se produce  por movimientos s�smicos desde el grado 8 inclusive en la escala de Mercalli, determinado por el Servicio Sismol�gico del Departamento de Geof�sica de la Universidad de Chile o del servicio que en el futuro lo reemplace.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">B.1)<fo:inline text-decoration="underline">Desmembramiento</fo:inline>: En virtud de esta cobertura y cuando la lesi�n sufrida a consecuencia de un accidente no ocasione el fallecimiento del asegurado, sino que produzca alguna de las p�rdidas que a continuaci�n se indican, y siempre que �stas se manifiesten antes de los noventa (90) d�as contados desde su ocurrencia y siempre que haya tenido lugar durante la vigencia de esta cobertura o dentro de alg�n periodo temporal de cobertura o dentro de la zona geogr�fica determinada en caso de haberlo as� solicitado el contratante, la compa��a aseguradora indemnizar� al asegurado los siguientes porcentajes del monto asegurado indicado en las condiciones particulares de la p�liza para esta cobertura: </fo:block>			
								
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 100% en caso de p�rdida total de los dos ojos, o de ambos miembros superiores (brazos), o de las dos manos, o de ambos miembros inferiores (piernas), o de los dos pies, o de un miembro inferior (pierna) y de una mano o un brazo; </fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 50% por la p�rdida de uno de los miembros superiores (brazos), o uno de los miembros inferiores (pierna), o de una mano o por la sordera completa de ambos o�dos, por la ceguera total de un ojo en caso de que el asegurado ya hubiera tenido ceguera total del otro antes de contratar este seguro;</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 40% por p�rdida de un pie; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 35% por la ceguera total de un ojo;</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 25% por la sordera completa de un o�do en caso de que el asegurado ya hubiera tenido sordera completa de otro, antes de contratar este seguro; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 20% por la p�rdida de un pulgar; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 15% por la p�rdida total del �ndice derecho e izquierdo.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 13% por la sordera completa de un o�do; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 5% por la p�rdida total de cualquiera de los dem�s dedos de la mano; </fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- 3% por la p�rdida total de un dedo del pie;</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">La p�rdida de cada falange, se calcular� en forma proporcional. La indemnizaci�n por la p�rdida total o parcial de varios dedos, se determinar� sumando el porcentaje asignado a cada uno de los dedos o falanges perdidos. La p�rdida funcional total y absoluta de cualquier miembro, se considerar� como p�rdida efectiva del mismo.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En el caso de ocurrir m�s de un siniestro cubierto por la p�liza durante la vigencia de �sta, los porcentajes a indemnizar se calcular�n sobre la base del monto asegurado y no al saldo de �ste, despu�s de haber efectuado otros pagos. Sin embargo, el total de indemnizaciones provenientes de desmembramientos por uno o m�s accidentes cubiertos por la p�liza, no podr�, en ning�n caso, exceder del 100% del monto asegurado.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">B.2)<fo:inline text-decoration="underline">Incapacidad Total y Permanente</fo:inline>En virtud de esta cobertura y cuando como resultado de lesiones producto de un accidente cubierto por esta p�liza en los t�rminos se�alados, el asegurado se encontrare dentro de los noventa d�as contados desde la fecha del accidente, salvo que en las condiciones particulares se estipule un plazo mayor, total y permanentemente incapacitado e impedido de desempe�ar cualquier ocupaci�n o de emprender cualquier trabajo o negocio lucrativo, la compa��a aseguradora pagar�, previa determinaci�n que dicha incapacidad sea total, continua y permanente, el porcentaje de la suma asegurada bajo esta cobertura que haya sido definido en las Condiciones Particulares, menos cualquier otra suma pagada o pagadera bajo los t�rminos de esta cobertura y el saldo mientras el asegurado est� vivo en el n�mero de cuotas y periodicidad que se indique en las Condiciones Particulares. Para efectos de esta cobertura, y se tendr� como fecha de declaraci�n de la invalidez total y permanente la fecha en que se notific� a la Compa��a la ocurrencia del accidente cubierto por esta p�liza.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En caso de que la Compa��a Aseguradora determine el rechazo de la indemnizaci�n por no producirse la Invalidez total y permanente, el Asegurado dentro de los diez (10) d�as h�biles siguientes a dicha comunicaci�n podr� requerir que la invalidez sea evaluada por una Junta M�dica compuesta por tres m�dicos cirujanos, elegidos por el asegurado, de entre una n�mina de cinco o m�s m�dicos propuestos por la Compa��a Aseguradora, los que deber�n encontrarse ejerciendo, o que hayan ejercido por al menos un a�o como miembros titulares de las Comisiones M�dicas Regionales o de la Comisi�n M�dica Central de la Superintendencia de Pensiones.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Rigen exclusiones del art�culo 6� del POL 3 2013 0409 y que se resumen a continuaci�n:</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Guerra, b) Participaci�n en peleas o ri�as, c) Participaci�n en actos delictivos, conmoci�n civil, terrorismo, entre otros, d) Suicidio, intento de suicidio o heridas autoinfligidas, e) Prestaci�n de servicios en Fuerzas Armadas o funciones policiales, f) Participaci�n en carreras, competencias remuneradas, g) Intoxicaci�n, drogas, h) Conducci�n en estado de ebriedad, i) Negligencia o imprudencia, j) Actividad o deporte riesgoso, consider�ndose como tales aquellos que objetivamente constituyan una flagrante agravaci�n del riesgo o se requiera de medidas de protecci�n o seguridad para realizarlos, que hayan sido declarados por el asegurado al momento de contratar el seguro y de lo cual haya quedado constancia en las Condiciones Particulares. A v�a de ejemplo y sin que la enumeraci�n sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, miner�a subterr�nea, trabajos en altura o l�neas de alta tensi�n, inmersi�n submarina, piloto civil, paracaidismo, monta�ismo, alas delta, benji, parapente, carreras de auto y moto, entre otros, k) Desempe�arse como piloto o tripulante de aviones l) Riesgos nucleares o at�micos, m) Sismos desde grado 8, n) Viaje o vuelo en veh�culo a�reo de cualquier clase, excepto como pasajero en uno sujeto a itinerario.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">3.- Fractura accidental de huesos</fo:inline></fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En virtud de esta cobertura, y cuando como resultado inmediato y directo de un accidente al asegurado se le diagnosticare la fractura de uno o m�s de los huesos individualizados a continuaci�n, la Compa��a Aseguradora pagar� al asegurado el monto indicado para cada caso: 1) Columna (vertebras); 2) Hombro (humero; clav�cula, omoplato); 3) Cadera (pelvis); 4) Codo (articulaci�n); 5) F�mur; 6) Tibia; 7) Peron�; 8) Pie (astr�galo, cu�as, metatarsianos); 9) Parrilla Costal (costilla, estern�n): 10) R�tula.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Rigen exclusiones del art�culo 4� del POL 3 2013 0085 y que se resumen a continuaci�n:</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Guerra, b) Participaci�n en peleas o ri�as, c) Participaci�n en actos delictivos, conmoci�n civil, terrorismo, entre otros, d) Suicidio, intento de suicidio o heridas autoinfligidas, e) Prestaci�n de servicios en Fuerzas Armadas o funciones policiales, f) Participaci�n en carreras, competencias remuneradas, g) Intoxicaci�n, drogas, h) Conducci�n en estado de ebriedad, i) Negligencia o imprudencia,  j) Actividad o deporte riesgoso, consider�ndose como tales aquellos que objetivamente constituyan una flagrante agravaci�n del riesgo o se requiera de medidas de protecci�n o seguridad para realizarlos. A v�a de ejemplo y sin que la enumeraci�n sea taxativa o restrictiva sino que meramente enunciativa, se considera actividad o deporte riesgoso el manejo de explosivos, miner�a subterr�nea, trabajos en altura o l�neas de alta tensi�n, inmersi�n submarina, piloto civil, paracaidismo, monta�ismo, alas delta, benji, parapente, carreras de auto y moto, entre otros, k) Actividad o deporte excluido en las condiciones particulares, l) Desempe�arse como piloto o tripulante de aviones m) Riesgos nucleares o at�micos n) Sismos desde grado 8, o) Viaje o vuelo en veh�culo a�reo de cualquier clase, excepto como pasajero en uno sujeto a itinerario, p) Quemaduras por sol o rayos ultravioletas con fines est�ticos, q) Fracturas por osteoporosis.</fo:block>		
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline>El monto asegurado para las coberturas Enfermedades Graves, Accidentes Personales y Fractura, corresponde al valor de la cuota pactada, con un m�ximo de 6 cuotas sin tope por cada cuota durante toda la vigencia del seguro. </fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline>Las coberturas de Accidentes Personales y Fracturas Accidental de Huesos regir�n desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento original del cr�dito de acuerdo a las condiciones pactadas en el momento del curse del cr�dito que se est� utilizando como medio de pago. La cobertura Enfermedades graves se inicia transcurridos 60 d�as corridos desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento original del cr�dito de acuerdo a las condiciones pactadas en el momento del curse del cr�dito que se est� utilizando como medio de pago.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">En el evento de prepagarse el cr�dito, subsistir� el o los seguro(s), a menos que el asegurado desista de �l en forma expresa en ese mismo acto o en un acto posterior.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline>Banco de Cr�dito e Inversiones hasta la concurrencia de su inter�s en el monto asegurado al momento de producirse el siniestro.  El saldo de la indemnizaci�n, si la hubiera, se pagar� al asegurado o sus beneficiarios en caso de fallecimiento.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline>Asociado a la Enfermedad Grave el inter�s asegurable corresponde a la merma que se genera en el ingreso familiar dado el pago de los gastos m�dicos. En caso de fallecimiento y fractura el inter�s asegurable por parte del Asegurado corresponde a su propia vida e integridad personal.</fo:block>			
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia:</fo:inline>La edad m�s el plazo del cr�dito no puede superar los 78 a�os 0 d�as.</fo:block>			
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

			              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">SEGURO CESANT�A</fo:block>
                            </fo:table-cell>


                      </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Compa��a Aseguradora: </fo:inline> BCI Seguros Generales S.A.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Cobertura: </fo:inline> (POL 1 2013 0122 Riesgos A y B)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">De acuerdo a las Condiciones se�aladas en las Condiciones Particulares, la Compa��a indemnizar� al beneficiario con el pago de los montos contratados si ocurre alguno de los siguientes eventos:</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">A. DESEMPLEO INVOLUNTARIO DEL ASEGURADO</fo:inline></fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Esta p�liza cubre los casos de cesant�a involuntaria del trabajador. Esta cobertura podr� ser contratada por:</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">a) Trabajadores Dependientes con contrato a plazo indefinido.</fo:inline> Se considerar�n �nica y exclusivamente como causales de cesant�a involuntaria las siguientes: i) las causales de los n�meros 1 y 6 del art�culo 159 del C�digo del Trabajo, esto es, Mutuo acuerdo entre las partes-siempre que el asegurado tenga derecho al pago de la indemnizaci�n por a�os de servicio y que as� se exprese en el finiquito y caso fortuito o fuerza mayor, respectivamente ii) Art�culo 161 del C�digo del Trabajo, esto es, necesidades de la empresa</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">b) Funcionario de Administraci�n P�blica sometido a estatuto administrativo.</fo:inline> La cesant�a ser� cubierta por la presente p�liza, �nica y exclusivamente, si se produce por alguna de las siguientes causales: i) Funcionarios de Planta: a) Supresi�n del empleo (art.146 letra e) del estatuto administrativo. b) T�rmino del per�odo legal (art.146 letra f) del estatuto administrativo. ii) Personal a contrata: No renovaci�n del contrato una vez finalizado el plazo.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">c) Profesional de la educaci�n sometido a estatuto docente.</fo:inline> La cesant�a de los profesionales de la educaci�n vinculados laboralmente y bajo r�gimen de subordinaci�n y dependencia a la educaci�n municipalizada, sometidos al Estatuto Docente por circunstancias contempladas en sus estatutos, siempre que no sean imputables al actuar o a la voluntad del asegurado y que implique la privaci�n total de ingresos por conceptos laborales.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">d) Miembros Fuerzas Armadas y de Orden.</fo:inline> La cesant�a de los miembros de las Fuerzas Armadas y de Orden ser� cubierta por la p�liza si se produce por alguna causal de retiro temporal o absoluto contempladas en sus respectivas Leyes Org�nicas, Estatutos y Reglamentos de Personal, pero s�lo si causal de cesant�a invocada cumpla con lo siguiente: 1.que el retiro o baja se deba a causa no imputable a la voluntad o a la conducta del miembro de las Fuerzas Armada y de Orden, 2.que el retiro o baja no implique para el integrante retirado o dado de baja el pago de una pensi�n o jubilaci�n por dicho concepto.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">B. INCAPACIDAD TEMPORAL A CONSECUENCIA DE ENFERMEDAD Y/O ACCIDENTE,</fo:inline> esta p�liza cubre los casos de asegurados en calidad de trabajador independiente y que cause el otorgamiento de una licencia m�dica de reposo superior a 30 d�as.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Materia Asegurada: </fo:inline> Corresponder�  a las cuotas mensuales pactadas.  En caso que el cr�dito que dio origen a este seguro hubiere sido prepagado, la materia asegurada corresponder� a una suma de dinero mensual de libre disposici�n para el asegurado, de igual monto a la cuota del cr�dito original.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Monto Asegurado: </fo:inline>   El monto asegurado corresponde a un monto equivalente al valor de la cuota pactada originalmente en el que cr�dito que se utiliz� como medio de pago con un tope de UF 62,5 por cada cuota. Para los cr�ditos de hasta 49 meses, el seguro cubrir� un m�ximo de 3 (tres) cuotas durante toda la vigencia del seguro. </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Para los cr�ditos de vigencia de 50 meses y m�s, el seguro cubrir� un m�ximo de 5 (cinco) cuotas durante toda la vigencia del seguro. </fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Para la cobertura de incapacidad temporal, el n�mero de cuotas a indemnizar se regir� de acuerdo al tiempo en reposo:</fo:block>    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De   31 a   60 d�as: 1 cuota</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De   61 a   90 d�as: 2 cuotas</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De   91 a 120 d�as: 3 cuotas</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De 121 a 150 d�as: 4 cuotas</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De 151 a 180 d�as: 5 cuotas (solo para plazos de 50 meses o m�s)</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">- De 181 o m�s d�as: 6 cuotas (solo para plazos de 50 meses o m�s)</fo:block>                                                                                                            
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Proceso de liquidaci�n de las cuotas</fo:inline></fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Frente a un denuncio de cesant�a de un asegurado, la compa��a de seguros verificara que se cumpla con las condiciones de cobertura que permitan liquidar el siniestro y generar el pago del monto asegurado con las cuotas del cr�dito que correspondan indemnizar.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">El mes de pago de la primera cuota se regir� de acuerdo al siguiente criterio de liquidaci�n: 1. Si la fecha de finiquito, de la relaci�n laboral del asegurado, generando su cesant�a, es igual o menor a la fecha de pago de la cuota del cr�dito (en el mes que quedo cesante), la compa��a indemnizara la cuota 1 a contar del mes siguiente de su cesant�a. 2. Si la fecha de finiquito, de la relaci�n laboral del asegurado, generando su cesant�a, es Mayor a la fecha de pago de la cuota del cr�dito (en el mes que quedo cesante), la compa��a indemnizara la cuota 1 a contar del mes subsiguiente de su cesant�a.</fo:block>									
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Beneficiario: </fo:inline> Banco de Cr�dito e Inversiones, hasta la concurrencia de su inter�s en el monto asegurado al momento de producirse el siniestro.  El saldo de la indemnizaci�n, si lo hubiera, se pagar� al asegurado.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Inter�s Asegurable: </fo:inline> El inter�s asegurable por parte del asegurado es el cumplimiento de sus obligaciones y compromisos.  Respecto del beneficiario tiene inter�s asegurable en tanto �ste es el acreedor.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Vigencia: </fo:inline> La cobertura regir� desde la fecha en que el banco otorga efectivamente el cr�dito y la Compa��a Aseguradora acepta asumir el riesgo, hasta el vencimiento original del cr�dito de acuerdo a las condiciones pactadas en el momento del curse del cr�dito que se est� utilizando como medio de pago.  La vigencia de esta cobertura no se terminar� necesariamente con el prepago del cr�dito que se utiliz� como medio de pago, dando la opci�n al asegurado de mantener, en el mismo acto, el seguro hasta el fin de la vigencia original de este, salvo que el asegurado solicite expresamente el t�rmino del seguro. Con la emisi�n de la propuesta, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comienza a regir �nicamente a partir del momento en que la propuesta sea aceptada por el asegurador y se inicie la vigencia de la p�liza. El asegurador se�alar� la aceptaci�n y/o rechazo de esta en un plazo m�ximo de 5 d�as h�biles a partir de la recepci�n de la propuesta, declaraci�n personal de salud y de la totalidad de los ex�menes solicitados por la Compa��a</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Edad l�mite de ingreso y permanencia: </fo:inline> 65 a�os 364 d�as</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Requisitos de asegurabilidad: </fo:inline> No tiene</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Periodo de actividad m�nima para invocar al seguro: </fo:inline> 6 meses con contrato indefinido con un mismo empleador.</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Plazo M�ximo de presentaci�n de antecedentes: </fo:inline> Para la acreditaci�n inicial del siniestro, en caso de trabajadores dependientes el plazo ser� 180 d�as corridos contados desde la fecha de t�rmino de la relaci�n laboral o fecha de inicio de licencia m�dica para trabajadores independientes. Posteriormente, para cobrar las cuotas siguientes el plazo es de 45 d�as corridos posteriores a la fecha de facturaci�n de cada cuota reclamada.</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Prima m�xima Bruta Total (UF): </fo:inline> se define para el seguro de Cesant�a involuntaria para todos los Plazos una prima m�xima a cobrar al cliente de  UF 83,30.</fo:block>
									 <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">Las primas indicadas son referenciales. En caso que la aseguradora decida evaluar el riesgo espec�fico, ello podr�a generar un cambio de las condiciones de aseguramiento y el aumento de la prima, sin perjuicio de su derecho a no otorgar en definitiva la cobertura solicitada.</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm"><fo:inline font-weight="bold">Exclusiones: </fo:inline> Rigen exclusiones del art�culo 5� del POL 1 2013 0122 y que se resumen a continuaci�n:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">a) Para cobertura de desempleo, no se cubrir�n causales de cesant�a distintas a las se�aladas en art�culo 3 letra A del condicionado general,</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">b) Para cobertura de incapacidad temporal, no se cubrir� cuando la causal de incapacidad sea producto de. </fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;a.	Reposo o licencia de embarazo,</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;b.	Incapacidades de origen nervioso y enfermedades de la espalda,</fo:block>
									<fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm">&#x20;&#x20;c.	Participaci�n en actos temerarios o deportes riesgosos, </fo:block>
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm">Folio N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
              
              <fo:table-column  border-bottom="0.5pt solid black" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                  
                            <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">AUTORIZACI�N:</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Autorizo al Banco para remitir a Bci Seguros Vida S.A., Bci Seguros Generales S.A. y/o Bci Corredores de Seguros S.A. la informaci�n pertinente a los montos de los cr�ditos; sus condiciones, estados de servicios de las deudas, montos o saldos insolutos adeudados y dem�s que fuere menester para dichas operaciones, seg�n lo solicitaren dichas compa��as.</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">Declaro recibir en el acto un duplicado del documento individualizado y acepto las condiciones de asegurabilidad descritas.</fo:block>
                            <fo:leader leader-pattern="space" leader-length="17cm"/>
                            <fo:block border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="left" background-color="#BDBDBD">DIVERSIFICACION DE PRODUCCION (Art.57 DFL 251):</fo:block>
                            <fo:block   font-family="Helvetica" font-size="11pt" line-height="4.5mm" text-align="justify" margin-left="1mm" margin-right="1mm">La informaci�n sobre la diversificaci�n de esta corredora, de las entidades aseguradoras con que haya trabajado y de las p�lizas de seguros para responder del cumplimiento de las obligaciones, se encuentran a su disposici�n en www.bci.cl</fo:block>
                            
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
                                    <fo:block font-family="Helvetica" font-size="11pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >INFORMACION DE LAS COMISIONES PAGADAS POR COLOCACI�N DE ESTOS SEGUROS</fo:block>
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
                                    <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="0mm" line-height="4.5mm">Comisi�n de recaudaci�n (Receptor Banco Bci)</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="0mm" line-height="4.5mm">UF 0,03 + IVA por recaudaci�n</fo:block>
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
                                    <fo:block border-left="0.5pt solid black" border-right="0.5pt solid black" font-family="Helvetica" font-size="11pt"  text-align="center" background-color="#BDBDBD">Seguros Intermediaci�n</fo:block>
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
                                    <fo:block border-top="0.5pt solid black"   font-family="Helvetica" font-size="11pt"   text-align="left"  margin-left="0mm" line-height="4.5mm">Cesant�a Involuntaria (POL 1 2013 0122)</fo:block>
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
                          Seguros Cliente Protegido para Cr�ditos de Consumo
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
