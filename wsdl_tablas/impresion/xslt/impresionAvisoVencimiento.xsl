<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2011/07/18 12:00 ==>-->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <!-- <xsl:param name="IMG_URL"/>-->
    <xsl:template match="avisoVencimiento">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
        
            <fo:layout-master-set>
                <fo:simple-page-master master-name="avisoVencimiento" page-height="11.000in" page-width="8.500in" margin-top="20.000px" margin-bottom="20.000px" margin-right="10.000px" margin-left="10.000px">
                    <fo:region-before region-name="xsl-region-before" display-align="after" extent="0.700in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-after region-name="xsl-region-after" display-align="before" extent="0.700in" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="avisoVencimiento" font-size="9pt" font-family="Helvetica">
            
                <fo:static-content flow-name="xsl-region-before" border-bottom-style="solid" border-bottom-width="3pt" border-bottom-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica"></fo:static-content>
                <fo:static-content flow-name="xsl-region-after" padding-top="2pt" border-top-style="solid" border-top-width="1pt" border-top-color="rgb(192,192,192)" font-size="10pt" font-family="Helvetica">
                    <fo:table table-layout="fixed" width="100%">
                        <fo:table-column column-width="proportional-column-width(4)"/>
                        <fo:table-column column-width="proportional-column-width(1)"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <fo:block color="rgb(105,105,105)"></fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:static-content>
                
                <fo:flow flow-name="xsl-region-body" font-size="10pt" font-family="Helvetica">

                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="100%"/>
                            <fo:table-body>
                                <fo:table-row display-align="auto" border-left-style="solid" border-left-width="2px" border-left-color="rgb(5,7,242)" border-top-left-radius="20px 20px" border-right-style="solid" border-right-width="2px" border-right-color="rgb(5,7,242)" border-bottom-right-radius="20px 20px" border-top-style="solid" border-top-width="0px" border-top-color="rgb(5,7,242)" border-top-right-radius="20px 20px" border-bottom-style="solid" border-bottom-width="0px" border-bottom-color="rgb(5,7,242)" border-bottom-left-radius="20px 20px" background-color="rgb(248,250,246)">
                                    <fo:table-cell text-align="center" padding-top="5pt" padding-left="15pt" padding-right="10pt" padding-bottom="15pt">
                                        <fo:block>   
                      
                                            <!-- INICIO: Datos de titulo -->
                                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                              <fo:table-column column-width="4cm" column-number="1"/>
                                              <fo:table-column column-width="16cm" column-number="2"/>

                                              <fo:table-body>

                                                <fo:table-row>
                                                  <fo:table-cell>
                                                    <fo:block text-align="left" space-before="5mm">
                                                      <fo:external-graphic width="1.330in" height="0.577in" vertical-align="left">
                                                        <xsl:attribute name="src">
                                                          <xsl:value-of select="rutaImagen"/>
                                                        </xsl:attribute>
                                                      </fo:external-graphic>
                                                    </fo:block>
                                                  </fo:table-cell>

                                                  <fo:table-cell>
                                                    <fo:block color="#7D94D7" text-align="left" space-before="5mm">

                                                      <fo:table space-before="5mm" space-after="5mm" table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                                        <fo:table-column column-width="16cm" column-number="1"/>
                                                                                        <fo:table-body>

                                                                                            <fo:table-row background-color="#DBE5F1">
                                                                                                <fo:table-cell> 
                                                                                                    <fo:block font-weight="bold" text-align="center">
                                                                                                        <xsl:value-of select="encabezado"/>
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
                                            <!-- FIN: Datos de titulo -->
                      
                                            <!-- INICIO: Seccion Copia Cliente -->
                                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse" space-before="1mm">
                                                <fo:table-column column-width="20cm" column-number="1"/>
                                                
                                                <fo:table-body>
                                                
                                                    <fo:table-row background-color="#DBE5F1">
                                                        <fo:table-cell>
                                                            <fo:block color="#7D94D7" text-align="center">
                                                                      
                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="20cm" column-number="1"/>
                                                                    <fo:table-body>
                                                                    
                                                                        <fo:table-row background-color="#DBE5F1">
                                                                            <fo:table-cell> 
                                                                                <fo:block font-weight="bold" text-align="center">
                                                                                    COPIA CLIENTE
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
                                            <!-- FIN: Seccion Copia Cliente -->
                                            
                                            <!-- INICIO: Seccion Copia Cliente -->
                                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                <fo:table-column column-width="20cm" column-number="1"/>
                                                
                                                <fo:table-body>
                                                
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="justify" space-before="5mm">
                                                                <xsl:value-of select="bodyCliente1"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block text-align="justify" space-before="5mm">
                                                                <xsl:value-of select="bodyCliente2"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    
                                                    <fo:table-row>
                                                        <fo:table-cell>
                                                            <fo:block font-weight="bold" text-align="justify" space-before="5mm">
                                                                <xsl:value-of select="bodyCliente3"/>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                    </fo:table-row>
                                                    
                                                </fo:table-body>
                                            </fo:table>
                                            <!-- FIN: Seccion Copia Cliente -->
                      
                                            <!-- INICIO: Datos del Vencimiento -->
                                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                              <fo:table-column column-width="7.4cm" column-number="1"/>
                                              <fo:table-column column-width="0.3cm" column-number="2"/>
                                              <fo:table-column column-width="7.5cm" column-number="3"/>
                                              <fo:table-column column-width="0.3cm" column-number="4"/>
                                              <fo:table-column column-width="4.5cm" column-number="5"/>

                                              <fo:table-body>
                                                <fo:table-row>

                                                  <!-- INICIO: Columna 1 -->
                                                  <fo:table-cell> 
                                                    <fo:block space-before="5mm"
                                                          border-top-style="solid" border-top-width="1px"
                                                          border-bottom-style="solid" border-bottom-width="1px"
                                                          border-left-style="solid" border-left-width="1px"
                                                          border-right-style="solid" border-right-width="1px">

                                                      <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                  
                                                        <fo:table-column column-width="50%" column-number="1"/>
                                                        <fo:table-column column-width="50%" column-number="2"/>
                                                        <fo:table-body>
                                                          <fo:table-row>
                                                            <fo:table-cell> 
                                                              <fo:block color="#7D94D7" text-align="left">
                                                                Señor(a):
                                                              </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell> 
                                                              <fo:block text-align="center"> 
                                                                <xsl:value-of select="nombreDeudor"/>
                                                              </fo:block>
                                                            </fo:table-cell>
                                                          </fo:table-row>
                                                        </fo:table-body>
                                                      </fo:table>

                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 1 -->

                                                  <!-- INICIO: Columna 2 -->
                                                  <fo:table-cell> 
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 2 -->

                                                  <!-- INICIO: Columna 3 -->
                                                  <fo:table-cell>
                                                    <fo:block text-align="center" space-before="5mm"
                                                          border-top-style="solid" border-top-width="1px"
                                                          border-bottom-style="solid" border-bottom-width="1px"
                                                          border-left-style="solid" border-left-width="1px"
                                                          border-right-style="solid" border-right-width="1px">  
                                                      <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                  
                                                        <fo:table-column column-width="proportional-column-width(35)" column-number="1"/>
                                                        <fo:table-column column-width="proportional-column-width(65)" column-number="2"/>
                                                        <fo:table-body>
                                                          <fo:table-row>
                                                            <fo:table-cell> 
                                                              <fo:block color="#7D94D7" text-align="left">
                                                                RUT:
                                                              </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell> 
                                                              <fo:block text-align="center"> 
                                                                <xsl:value-of select="rutDeudor"/>
                                                              </fo:block>
                                                            </fo:table-cell>
                                                          </fo:table-row>
                                                        </fo:table-body>
                                                      </fo:table>
                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 3 -->

                                                  <!-- INICIO: Columna 4 -->
                                                  <fo:table-cell> 
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 4 -->

                                                  <!-- INICIO: Columna 5 -->
                                                  <fo:table-cell>   
                                                      <fo:block space-before="5mm"
                                                                border-top-style="solid" border-top-width="1px"
                                                                border-bottom-style="solid" border-bottom-width="1px"
                                                                border-left-style="solid" border-left-width="1px"
                                                                border-right-style="solid" border-right-width="1px">

                                                          <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                                                              <fo:table-column column-width="50%" column-number="1"/>
                                                              <fo:table-column column-width="50%" column-number="2"/>
                                                              <fo:table-body>
                                                                  <fo:table-row>
                                                                      <fo:table-cell> 
                                                                          <fo:block color="#7D94D7" text-align="left">
                                                                              Pagar Hasta :
                                                                          </fo:block>
                                                                      </fo:table-cell>
                                                                      <fo:table-cell> 
                                                                          <fo:block text-align="center"> 
                                                                              <xsl:value-of select="fechaPago"/>
                                                                          </fo:block>
                                                                      </fo:table-cell>
                                                                  </fo:table-row>
                                                              </fo:table-body>
                                                          </fo:table>

                                                      </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 5 -->
                            
                                                </fo:table-row>
                          
                                                <fo:table-row>

                                                  <!-- INICIO: Columna 1 -->
                                                  <fo:table-cell> 
                                                    <fo:block color="#7D94D7" space-before="5mm">

                                                      <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                        <fo:table-column column-width="3.6cm" column-number="1"/>
                                                        <fo:table-column column-width="1.8cm" column-number="2"/>
                                                        <fo:table-column column-width="2cm" column-number="3"/>

                                                        <fo:table-body>
                                                          <!-- Cabecera: Detalle Crédito -->
                                                          <fo:table-row background-color="#DBE5F1" text-align="center">

                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                  border-left-style="solid" border-left-width="1px"                                        
                                                                padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                              <fo:block>Detalle de Crédito(s)</fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                              <fo:block>N° Cuota</fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                  border-right-style="solid" border-right-width="1px" 
                                                                     padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                              <fo:block>Monto U.F.</fo:block>
                                                            </fo:table-cell>

                                                          </fo:table-row>
                                                          <!-- Cabecera: Detalle Crédito -->

                                                        </fo:table-body>
                                                      </fo:table>

                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 1 -->

                                                  <!-- INICIO: Columna 2 -->
                                                  <fo:table-cell> 
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 2 -->

                                                  <!-- INICIO: Columna 3 -->
                                                  <fo:table-cell> 
                                                    <fo:block color="#7D94D7" space-before="5mm">

                                                      <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                        <fo:table-column column-width="2cm" column-number="1"/>
                                                        <fo:table-column column-width="2.8cm" column-number="2"/>
                                                        <fo:table-column column-width="2.7cm" column-number="3"/>

                                                        <fo:table-body>
                                                          <!-- Cabecera: Detalle Crédito -->
                                                          <fo:table-row background-color="#DBE5F1" text-align="center">

                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                  border-left-style="solid" border-left-width="1px"
                                                                  border-right-style="solid" border-right-width="1px"                                        
                                                                padding-top="2px" padding-left="2px" padding-right="2px" 
                                                                padding-bottom="2px">
                                                              <fo:block>Fecha</fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                  border-right-style="solid" border-right-width="1px"
                                                                padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                              <fo:block>Valor U.F.</fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                  border-right-style="solid" border-right-width="1px" 
                                                                     padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                              <fo:block>Monto ($)</fo:block>
                                                            </fo:table-cell>

                                                          </fo:table-row>
                                                          <!-- Cabecera: Detalle Crédito -->

                                                        </fo:table-body>
                                                      </fo:table>

                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 3 -->

                                                  <!-- INICIO: Columna 4 -->
                                                  <fo:table-cell> 
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 4 -->

                                                  <!-- INICIO: Columna 5 -->
                                                  <fo:table-cell> 
                                                    <fo:block color="#7D94D7" space-before="5mm">

                                                      <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                        <fo:table-column column-width="4.5cm" column-number="1"/>

                                                        <fo:table-body>
                                                          <!-- Cabecera: Detalle Crédito -->
                                                          <fo:table-row text-align="center">

                                                            <fo:table-cell text-align="left" font-weight="bold"
                                                                border-top-style="solid" border-top-width="1px"
                                                                  border-left-style="solid" border-left-width="1px"
                                                                  border-right-style="solid" border-right-width="1px"
                                                                padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                              <fo:block>Valor Cuota</fo:block>
                                                            </fo:table-cell>

                                                          </fo:table-row>
                                                          <!-- Cabecera: Detalle Crédito -->

                                                        </fo:table-body>
                                                      </fo:table>

                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 5 -->

                                                </fo:table-row>
                          
                                                <fo:table-row>

                                                  <!-- INICIO: Columna 1 -->
                                                  <fo:table-cell> 
                                                    <fo:block color="#7D94D7">

                                                      <fo:table space-before="" table-layout="fixed" width="100%" border-collapse="collapse">

                                                        <fo:table-column column-width="8cm" column-number="1"/>

                                                        <fo:table-body>

                                                          <!-- Cuerpo: Detalle Crédito -->
                                                          <fo:table-row>
                                                              <fo:table-cell>

                                                                <fo:block text-align="left" color="#7D94D7">
                                                                  <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                    <fo:table-column column-width="7.4cm" column-number="1"/>
                                                                    <fo:table-body>
                                                                    <fo:table-row text-align="left">
                                                                      <fo:table-cell text-align="left"
                                                                          border-left-style="solid" border-left-width="1px"
                                                                          border-right-style="solid" border-right-width="1px">
                                                                        <fo:block>Crédito(s) de Arancel</fo:block>
                                                                      </fo:table-cell>
                                                                    </fo:table-row>
                                                                  </fo:table-body>
                                                                  </fo:table>
                                                                </fo:block>

                                                              <fo:block color="#7D94D7">

                                                              <xsl:for-each select="vencimientoCAEF01/element">
                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                  <fo:table-column column-width="3.8cm" column-number="1"/>
                                                                  <fo:table-column column-width="1.8cm" column-number="2"/>
                                                                  <fo:table-column column-width="1.8cm" column-number="3"/>

                                                                    <fo:table-body>


                                                                      <fo:table-row text-align="center">

                                                                        <fo:table-cell text-align="center"
                                                                            border-left-style="solid" border-left-width="1px">
                                                                          <fo:block>N° 
                                                                            <fo:inline>
                                                                              <xsl:value-of select="caiOperacionArancel"/>
                                                                              <xsl:value-of select="iicOperacionArancel"/>
                                                                            </fo:inline>
                                                                          </fo:block>
                                                                        </fo:table-cell>

                                                                        <fo:table-cell text-align="center">
                                                                          <fo:block>
                                                                            <fo:inline>
                                                                              <xsl:value-of select="numCuotaOperacionArancel"/> 
                                                                              de 
                                                                              <xsl:value-of select="numTotalCuota"/>
                                                                            </fo:inline>
                                                                          </fo:block>
                                                                        </fo:table-cell>

                                                                        <fo:table-cell text-align="center"
                                                                            border-right-style="solid" border-right-width="1px">
                                                                          <fo:block>
                                                                              <xsl:value-of select="valorCuotaOperacionArancel"/>
                                                                          </fo:block>
                                                                        </fo:table-cell>
                                                                      </fo:table-row>

                                                                    </fo:table-body>
                                                                </fo:table>

                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                  <fo:table-column column-width="5.6cm" column-number="1"/>
                                                                  <fo:table-column column-width="1.8cm" column-number="2"/>

                                                                    <fo:table-body>

                                                                      <fo:table-row text-align="center">

                                                                        <fo:table-cell text-align="center"
                                                                            border-left-style="solid" border-left-width="1px">
                                                                          <fo:block><fo:inline>Comisión de Administración</fo:inline></fo:block>
                                                                        </fo:table-cell>

                                                                        <fo:table-cell text-align="center"
                                                                            border-right-style="solid" border-right-width="1px">
                                                                          <fo:block>
                                                                            <fo:inline>
                                                                              <xsl:value-of select="valorComisionOperacion"/> 
                                                                            </fo:inline>
                                                                          </fo:block>
                                                                        </fo:table-cell>

                                                                      </fo:table-row>

                                                                    </fo:table-body>
                                                                </fo:table>
                                                              </xsl:for-each>

                                                              </fo:block>

                                                              <fo:block text-align="left" color="#7D94D7">
                                                                  <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                    <fo:table-column column-width="7.4cm" column-number="1"/>
                                                                    <fo:table-body>
                                                                    <fo:table-row text-align="left">
                                                                      <fo:table-cell text-align="left"
                                                                          border-left-style="solid" border-left-width="1px"
                                                                          border-right-style="solid" border-right-width="1px">
                                                                        <fo:block>Crédito(s) de Com. Administ. (Período Estudio)</fo:block>
                                                                      </fo:table-cell>
                                                                    </fo:table-row>
                                                                  </fo:table-body>
                                                                  </fo:table>
                                                                </fo:block>

                                                                <fo:block color="#7D94D7">

                                                                <xsl:for-each select="vencimientoCAEF02/element">
                                                                  <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                    <fo:table-column column-width="3.8cm" column-number="1"/>
                                                                    <fo:table-column column-width="1.8cm" column-number="2"/>
                                                                    <fo:table-column column-width="1.8cm" column-number="3"/>

                                                                      <fo:table-body>
                                                                        <fo:table-row text-align="center">

                                                                          <fo:table-cell text-align="center"
                                                                              border-left-style="solid" border-left-width="1px">
                                                                            <fo:block>N° 
                                                                              <fo:inline>
                                                                                <xsl:value-of select="caiOperacionComision"/>
                                                                                <xsl:value-of select="iicOperacionComision"/>
                                                                              </fo:inline>
                                                                            </fo:block>
                                                                          </fo:table-cell>

                                                                          <fo:table-cell text-align="center">
                                                                            <fo:block>
                                                                              <fo:inline>
                                                                                <xsl:value-of select="numCuotaOperacionComision"/> 
                                                                                de 
                                                                                <xsl:value-of select="numTotalCuota"/>
                                                                              </fo:inline>
                                                                            </fo:block>
                                                                          </fo:table-cell>

                                                                          <fo:table-cell text-align="center"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                            <fo:block>
                                                                              <fo:inline>
                                                                                <xsl:value-of select="valorCuotaOperacionComision"/>
                                                                              </fo:inline>
                                                                            </fo:block>
                                                                          </fo:table-cell>
                                                                        </fo:table-row>

                                                                      </fo:table-body>
                                                                  </fo:table>

                                                                  <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                    <fo:table-column column-width="5.6cm" column-number="1"/>
                                                                    <fo:table-column column-width="1.8cm" column-number="2"/>

                                                                      <fo:table-body>

                                                                        <fo:table-row text-align="center">

                                                                          <fo:table-cell text-align="center"
                                                                              border-left-style="solid" border-left-width="1px">
                                                                            <fo:block>Comisión de Administración</fo:block>
                                                                          </fo:table-cell>

                                                                          <fo:table-cell text-align="center"
                                                                              border-right-style="solid" border-right-width="1px">
                                                                            <fo:block>
                                                                              <fo:inline>
                                                                                <xsl:value-of select="valorComisionOperacion"/> 
                                                                              </fo:inline>
                                                                            </fo:block>
                                                                          </fo:table-cell>

                                                                        </fo:table-row>


                                                                      </fo:table-body>
                                                                  </fo:table>
                                                                </xsl:for-each>

                                                                </fo:block>

                                                                <fo:block color="#7D94D7">

                                                                  <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                      <fo:table-column column-width="5.4cm" column-number="1"/>
                                                                      <fo:table-column column-width="2cm" column-number="2"/>

                                                                      <fo:table-body>
                                                                          <!-- Pie: Valor Total -->
                                                                          <fo:table-row background-color="#DBE5F1" text-align="center">

                                                                              <fo:table-cell text-align="left" font-weight="bold" 
                                                                                      border-left-style="solid" border-left-width="1px"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                  <fo:block>Valor Cuota UF</fo:block>
                                                                              </fo:table-cell>
                                                                              <fo:table-cell text-align="center" font-weight="bold"
                                                                                      border-right-style="solid" border-right-width="1px"
                                                                                      border-top-style="solid" border-top-width="1px"
                                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                                      padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                  <fo:block>
                                                                                      <fo:inline>
                                                                                          <xsl:value-of select="valorTotal"/>
                                                                                      </fo:inline>
                                                                                  </fo:block>
                                                                              </fo:table-cell>

                                                                          </fo:table-row>
                                                                          <!-- Pie: Valor Total -->
                                                                      </fo:table-body>
                                                                  </fo:table>
                                                                </fo:block>

                                                            </fo:table-cell>
                                                          </fo:table-row>
                                                          <!-- Cuerpo: Detalle Crédito -->

                                                        </fo:table-body>
                                                      </fo:table>

                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 1 -->

                                                  <!-- INICIO: Columna 2 -->
                                                  <fo:table-cell> 
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 2 -->

                                                  <!-- INICIO: Columna 3 -->
                                                  <fo:table-cell> 
                                                    <fo:block color="#7D94D7">

                                                      <fo:table space-before="" table-layout="fixed" width="100%" border-collapse="collapse">

                                                        <fo:table-column column-width="2cm" column-number="1"/>
                                                        <fo:table-column column-width="2.8cm" column-number="2"/>
                                                        <fo:table-column column-width="2.7cm" column-number="3"/>

                                                        <xsl:for-each select="vencimientoCAEF03/element">
                                                          <fo:table-body>
                                                            <fo:table-row>
                                                              <fo:table-cell text-align="center"
                                                                  border-left-style="solid" border-left-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px">
                                                                <fo:block>
                                                                  <fo:inline>
                                                                    <xsl:value-of select="fechaValorPagarOperaciones"/>
                                                                  </fo:inline>
                                                                </fo:block>
                                                              </fo:table-cell>

                                                              <fo:table-cell text-align="center"
                                                                  border-left-style="solid" border-left-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px">
                                                                <fo:block>$ 
                                                                  <fo:inline>
                                                                    <xsl:value-of select="ufValorPagarOperaciones"/>
                                                                  </fo:inline>
                                                                </fo:block>
                                                              </fo:table-cell>

                                                              <fo:table-cell text-align="center"
                                                                  border-left-style="solid" border-left-width="1px"
                                                                  border-bottom-style="solid" border-bottom-width="1px"
                                                                  border-right-style="solid" border-right-width="1px">
                                                                <fo:block>$ 
                                                                  <fo:inline>
                                                                    <xsl:value-of select="pesosValorPagarOperaciones"/>
                                                                  </fo:inline>
                                                                </fo:block>
                                                              </fo:table-cell>
                                                            </fo:table-row>
                                                          </fo:table-body>
                                                        </xsl:for-each>
                                                      </fo:table>
                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 3 -->

                                                  <!-- INICIO: Columna 4 -->
                                                  <fo:table-cell> 
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 4 -->

                                                  <!-- INICIO: Columna 5 -->
                                                  <fo:table-cell> 
                                                    <fo:block color="#7D94D7">

                                                      <fo:table space-before="" table-layout="fixed" width="100%" border-collapse="collapse">

                                                        <fo:table-column column-width="2.7cm" column-number="1"/>
                                                        <fo:table-column column-width="1.7cm" column-number="2"/>
                                                        <fo:table-column column-width="0.1cm" column-number="3"/>

                                                        <fo:table-body>
                                                          <fo:table-row>
                                                            <fo:table-cell border-left-style="solid" text-align="left">
                                                              <fo:block> 
                                                                  Total UF:
                                                              </fo:block>
                                                            </fo:table-cell>

                                                            <fo:table-cell>
                                                              <fo:block>
                                                                <fo:table font-size="8pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                                                  <fo:table-column />
                                                                  <fo:table-body>
                                                                    <fo:table-row display-align="center">
                                                                      <fo:table-cell border="solid" padding-before="5pt">
                                                                        <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                                            <fo:inline>
                                                                            <xsl:value-of select="valorTotal"/>
                                                                        </fo:inline>
                                                                        </fo:block>
                                                                      </fo:table-cell>
                                                                    </fo:table-row>
                                                                  </fo:table-body>
                                                                </fo:table>
                                                              </fo:block>
                                                            </fo:table-cell>

                                                            <fo:table-cell border-right-style="solid" text-align="left">
                                                            </fo:table-cell>
                                                          </fo:table-row>
                                    
                                                          <fo:table-row>
                                                            <fo:table-cell border-left-style="solid" text-align="left">
                                                                <fo:block> 
                                                                    Fecha Pago:
                                                                </fo:block>
                                                            </fo:table-cell>

                                                            <fo:table-cell>
                                                              <fo:block>
                                                                <fo:table font-size="8pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                                                  <fo:table-column />
                                                                  <fo:table-body>
                                                                    <fo:table-row display-align="center">
                                                                      <fo:table-cell border="solid" padding-before="5pt">
                                                                        <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                                        </fo:block>
                                                                      </fo:table-cell>
                                                                    </fo:table-row>
                                                                  </fo:table-body>
                                                                </fo:table>
                                                              </fo:block>
                                                            </fo:table-cell>

                                                            <fo:table-cell border-right-style="solid" text-align="left">
                                                            </fo:table-cell>
                                                          </fo:table-row>
                                    
                                                          <fo:table-row>
                                                            <fo:table-cell text-align="left"
                                                                 border-left-style="solid"
                                                                 border-bottom-style="solid">
                                                              <fo:block>
                                                                  Total $:
                                                              </fo:block>
                                                            </fo:table-cell>

                                                            <fo:table-cell border-bottom-style="solid">
                                                              <fo:block>
                                                                <fo:table font-size="8pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                                                  <fo:table-column />
                                                                  <fo:table-body>
                                                                    <fo:table-row display-align="center">
                                                                      <fo:table-cell border="solid" padding-before="5pt">
                                                                        <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                                        </fo:block>
                                                                      </fo:table-cell>
                                                                    </fo:table-row>
                                                                  </fo:table-body>
                                                                </fo:table>
                                                              </fo:block>
                                                            </fo:table-cell>

                                                            <fo:table-cell text-align="left"
                                                                 border-right-style="solid"
                                                                 border-bottom-style="solid">
                                                            </fo:table-cell>
                                                          </fo:table-row>

                                                        </fo:table-body>
                                                      </fo:table>
                                                    </fo:block>
                                                    <fo:block color="#7D94D7" space-before="2mm">
                                                         <fo:external-graphic width="1.376in" height="1.370in" vertical-align="left">
                                                             <xsl:attribute name="src">
                                                                 <xsl:value-of select="timbreFirma"/>
                                                             </xsl:attribute>
                                                         </fo:external-graphic>
                                                    </fo:block>
                                                  </fo:table-cell>
                                                  <!-- FIN: Columna 5 -->

                                                </fo:table-row>
                          
                                              </fo:table-body>
                                            </fo:table>         
                                            <!-- FIN: Datos de Vencimiento y Oficina -->
                      
                                            <!-- INICIO: Seccion Copia Banco -->
                                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse" space-before="5mm">
                                                <fo:table-column column-width="20cm" column-number="1"/>
                                                
                                                <fo:table-body>
                                                
                                                    <fo:table-row background-color="#DBE5F1">
                                                        <fo:table-cell>
                                                            <fo:block color="#7D94D7" text-align="center">
                                                                      
                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">                                                                    
                                                                    <fo:table-column column-width="20cm" column-number="1"/>
                                                                    <fo:table-body>
                                                                    
                                                                        <fo:table-row background-color="#DBE5F1">
                                                                            <fo:table-cell> 
                                                                                <fo:block font-weight="bold" text-align="center">
                                                                                    COPIA BANCO
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
                                            <!-- FIN: Seccion Copia Banco -->
                                            
                                            <!-- INICIO: Datos del Vencimiento -->
                                            <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                            
                                                <fo:table-column column-width="7.4cm" column-number="1"/>
                                                <fo:table-column column-width="0.3cm" column-number="2"/>
                                                <fo:table-column column-width="7.5cm" column-number="3"/>
                                                <fo:table-column column-width="0.3cm" column-number="4"/>
                                                <fo:table-column column-width="4.5cm" column-number="5"/>
                                                
                                                <fo:table-body>
                                                    <fo:table-row>
                                                    
                                                        <!-- INICIO: Columna 1 -->
                                                        <fo:table-cell> 
                                                            <fo:block space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">
                                                                      
                                                                <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                                                                    <fo:table-column column-width="50%" column-number="1"/>
                                                                    <fo:table-column column-width="50%" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell> 
                                                                                <fo:block color="#7D94D7" text-align="left">
                                                                                    Señor(a):
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell> 
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="nombreDeudor"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                                
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 1 -->
                                                        
                                                        <!-- INICIO: Columna 2 -->
                                                        <fo:table-cell> 
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 2 -->
                                                        
                                                        <!-- INICIO: Columna 3 -->
                                                        <fo:table-cell>
                                                            <fo:block text-align="center" space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">  
                                                                <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                                                                    <fo:table-column column-width="proportional-column-width(35)" column-number="1"/>
                                                                    <fo:table-column column-width="proportional-column-width(65)" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell> 
                                                                                <fo:block color="#7D94D7" text-align="left">
                                                                                    RUT:
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell> 
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="rutDeudor"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 3 -->
                                                        
                                                        <!-- INICIO: Columna 4 -->
                                                        <fo:table-cell> 
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 4 -->
                                                        
                                                        <!-- INICIO: Columna 5 -->
                                                        <fo:table-cell>   
                                                            <fo:block space-before="5mm"
                                                                      border-top-style="solid" border-top-width="1px"
                                                                      border-bottom-style="solid" border-bottom-width="1px"
                                                                      border-left-style="solid" border-left-width="1px"
                                                                      border-right-style="solid" border-right-width="1px">
                                                                      
                                                                <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                                                                    <fo:table-column column-width="50%" column-number="1"/>
                                                                    <fo:table-column column-width="50%" column-number="2"/>
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell> 
                                                                                <fo:block color="#7D94D7" text-align="left">
                                                                                    Pagar Hasta :
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell> 
                                                                                <fo:block text-align="center"> 
                                                                                    <xsl:value-of select="fechaPago"/>
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                    </fo:table-body>
                                                                </fo:table>
                                                                
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 5 -->
                                                        
                                                    </fo:table-row>
                                                    
                                                    <fo:table-row>
                                                    
                                                        <!-- INICIO: Columna 1 -->
                                                        <fo:table-cell> 
                                                            <fo:block color="#7D94D7" space-before="5mm">
                                                                      
                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                    
                                                                    <fo:table-column column-width="3.6cm" column-number="1"/>
                                                                    <fo:table-column column-width="1.8cm" column-number="2"/>
                                                                    <fo:table-column column-width="2cm" column-number="3"/>
                                                                    
                                                                    <fo:table-body>
                                                                        <!-- Cabecera: Detalle Crédito -->
                                                                        <fo:table-row background-color="#DBE5F1" text-align="center">
                                                                        
                                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                                                    border-left-style="solid" border-left-width="1px"                                                                              
                                                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                <fo:block>Detalle de Crédito(s)</fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                <fo:block>N° Cuota</fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                                                    border-right-style="solid" border-right-width="1px" 
                                                                                           padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                <fo:block>Monto U.F.</fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                        </fo:table-row>
                                                                        <!-- Cabecera: Detalle Crédito -->
                                                                        
                                                                    </fo:table-body>
                                                                </fo:table>
                                                                
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 1 -->
                                                        
                                                        <!-- INICIO: Columna 2 -->
                                                        <fo:table-cell> 
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 2 -->
                                                        
                                                        <!-- INICIO: Columna 3 -->
                                                        <fo:table-cell> 
                                                            <fo:block color="#7D94D7" space-before="5mm">
                                                                      
                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                    
                                                                    <fo:table-column column-width="2cm" column-number="1"/>
                                                                    <fo:table-column column-width="2.8cm" column-number="2"/>
                                                                    <fo:table-column column-width="2.7cm" column-number="3"/>
                                                                    
                                                                    <fo:table-body>
                                                                        <!-- Cabecera: Detalle Crédito -->
                                                                        <fo:table-row background-color="#DBE5F1" text-align="center">
                                                                        
                                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                                                    border-left-style="solid" border-left-width="1px"
                                                                                    border-right-style="solid" border-right-width="1px"                                                                            
                                                                                    padding-top="2px" padding-left="2px" padding-right="2px" 
                                                                                    padding-bottom="2px">
                                                                                <fo:block>Fecha</fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                                                    border-right-style="solid" border-right-width="1px"
                                                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                <fo:block>Valor U.F.</fo:block>
                                                                            </fo:table-cell>
                                                                            <fo:table-cell text-align="center" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-bottom-style="solid" border-bottom-width="1px"
                                                                                    border-right-style="solid" border-right-width="1px" 
                                                                                           padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                <fo:block>Monto ($)</fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                        </fo:table-row>
                                                                        <!-- Cabecera: Detalle Crédito -->
                                                                        
                                                                    </fo:table-body>
                                                                </fo:table>
                                                                
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 3 -->
                                                        
                                                        <!-- INICIO: Columna 4 -->
                                                        <fo:table-cell> 
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 4 -->
                                                        
                                                        <!-- INICIO: Columna 5 -->
                                                        <fo:table-cell> 
                                                            <fo:block color="#7D94D7" space-before="5mm">
                                                                      
                                                                <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                    
                                                                    <fo:table-column column-width="4.5cm" column-number="1"/>
                                                                    
                                                                    <fo:table-body>
                                                                        <!-- Cabecera: Detalle Crédito -->
                                                                        <fo:table-row text-align="center">
                                                                        
                                                                            <fo:table-cell text-align="left" font-weight="bold"
                                                                                    border-top-style="solid" border-top-width="1px"
                                                                                    border-left-style="solid" border-left-width="1px"
                                                                                    border-right-style="solid" border-right-width="1px"
                                                                                    padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                <fo:block>Valor Cuota</fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                        </fo:table-row>
                                                                        <!-- Cabecera: Detalle Crédito -->
                                                                        
                                                                    </fo:table-body>
                                                                </fo:table>
                                                                
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 5 -->
                                                    
                                                    </fo:table-row>
                                                    
                                                    <fo:table-row>
                                                    
                                                        <!-- INICIO: Columna 1 -->
                                                        <fo:table-cell> 
                                                            <fo:block color="#7D94D7">
                                                                      
                                                                <fo:table space-before="" table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                    
                                                                    <fo:table-column column-width="8cm" column-number="1"/>
                                                                    
                                                                    <fo:table-body>
                                                                        
                                                                        <!-- Cuerpo: Detalle Crédito -->
                                                                        <fo:table-row>
                                                                            <fo:table-cell>
                                                                            
                                                                                <fo:block text-align="left" color="#7D94D7">
                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                        <fo:table-column column-width="7.4cm" column-number="1"/>
                                                                                        <fo:table-body>
                                                                                            <fo:table-row text-align="left">
                                                                                                <fo:table-cell text-align="left"
                                                                                                        border-left-style="solid" border-left-width="1px"
                                                                                                        border-right-style="solid" border-right-width="1px">
                                                                                                    <fo:block>Crédito(s) de Arancel</fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                        </fo:table-body>
                                                                                    </fo:table>
                                                                                </fo:block>
                                                                                
                                                                                <fo:block color="#7D94D7">
                                                                                          
                                                                                  <xsl:for-each select="vencimientoCAEF01/element">
                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                                        
                                                                                        <fo:table-column column-width="3.8cm" column-number="1"/>
                                                                                        <fo:table-column column-width="1.8cm" column-number="2"/>
                                                                                        <fo:table-column column-width="1.8cm" column-number="3"/>
                                                                                        
                                                                                            <fo:table-body>
                                                                                                <fo:table-row text-align="center">
                                                                                                
                                                                                                    <fo:table-cell text-align="center"
                                                                                                            border-left-style="solid" border-left-width="1px">
                                                                                                        <fo:block>N° 
                                                                                                            <fo:inline>
                                                                                                                <xsl:value-of select="caiOperacionArancel"/>
                                                                                                                <xsl:value-of select="iicOperacionArancel"/>
                                                                                                            </fo:inline>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    
                                                                                                    <fo:table-cell text-align="center">
                                                                                                        <fo:block>
                                                                                                            <fo:inline>
                                                                                                                <xsl:value-of select="numCuotaOperacionArancel"/> 
                                                                                                                de 
                                                                                                                <xsl:value-of select="numTotalCuota"/>
                                                                                                            </fo:inline>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    
                                                                                                    <fo:table-cell text-align="center"
                                                                                                            border-right-style="solid" border-right-width="1px">
                                                                                                        <fo:block>
                                                                                                            <fo:inline>
                                                                                                                <xsl:value-of select="valorCuotaOperacionArancel"/>
                                                                                                            </fo:inline>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                            </fo:table-body>
                                                                                    </fo:table>
                                          
                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                                      <fo:table-column column-width="5.6cm" column-number="1"/>
                                                                                      <fo:table-column column-width="1.8cm" column-number="2"/>

                                                                                        <fo:table-body>

                                                                                          <fo:table-row text-align="center">

                                                                                            <fo:table-cell text-align="center"
                                                                                                border-left-style="solid" border-left-width="1px">
                                                                                              <fo:block><fo:inline>Comisión de Administración</fo:inline></fo:block>
                                                                                            </fo:table-cell>

                                                                                            <fo:table-cell text-align="center"
                                                                                                border-right-style="solid" border-right-width="1px">
                                                                                              <fo:block>
                                                                                                <fo:inline>
                                                                                                  <xsl:value-of select="valorComisionOperacion"/> 
                                                                                                </fo:inline>
                                                                                              </fo:block>
                                                                                            </fo:table-cell>

                                                                                          </fo:table-row>

                                                                                        </fo:table-body>
                                                                                    </fo:table>
                                                                                        
                                                                                  </xsl:for-each>
                                                                                    
                                                                                </fo:block>
                                                                                
                                                                                <fo:block text-align="left" color="#7D94D7">
                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                        <fo:table-column column-width="7.4cm" column-number="1"/>
                                                                                        <fo:table-body>
                                                                                            <fo:table-row text-align="left">
                                                                                                <fo:table-cell text-align="left"
                                                                                                        border-left-style="solid" border-left-width="1px"
                                                                                                        border-right-style="solid" border-right-width="1px">
                                                                                                    <fo:block>Crédito(s) de Com. Administ. (Período Estudio)</fo:block>
                                                                                                </fo:table-cell>
                                                                                            </fo:table-row>
                                                                                        </fo:table-body>
                                                                                    </fo:table>
                                                                                </fo:block>
                                                                                
                                                                                <fo:block color="#7D94D7">
                                                                                          
                                                                                  <xsl:for-each select="vencimientoCAEF02/element">
                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                                        
                                                                                        <fo:table-column column-width="3.8cm" column-number="1"/>
                                                                                        <fo:table-column column-width="1.8cm" column-number="2"/>
                                                                                        <fo:table-column column-width="1.8cm" column-number="3"/>
                                                                                        
                                                                                            <fo:table-body>
                                                                                                <fo:table-row text-align="center">
                                                                                                
                                                                                                    <fo:table-cell text-align="center"
                                                                                                            border-left-style="solid" border-left-width="1px">
                                                                                                        <fo:block>N° 
                                                                                                            <fo:inline>
                                                                                                                <xsl:value-of select="caiOperacionComision"/>
                                                                                                                <xsl:value-of select="iicOperacionComision"/>
                                                                                                            </fo:inline>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    
                                                                                                    <fo:table-cell text-align="center">
                                                                                                        <fo:block>
                                                                                                            <fo:inline>
                                                                                                                <xsl:value-of select="numCuotaOperacionComision"/> 
                                                                                                                de 
                                                                                                                <xsl:value-of select="numTotalCuota"/>
                                                                                                            </fo:inline>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                    
                                                                                                    <fo:table-cell text-align="center"
                                                                                                            border-right-style="solid" border-right-width="1px">
                                                                                                        <fo:block>
                                                                                                            <fo:inline>
                                                                                                                <xsl:value-of select="valorCuotaOperacionComision"/>
                                                                                                            </fo:inline>
                                                                                                        </fo:block>
                                                                                                    </fo:table-cell>
                                                                                                </fo:table-row>
                                                                                            </fo:table-body>
                                                                                    </fo:table>

                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">

                                                                                      <fo:table-column column-width="5.6cm" column-number="1"/>
                                                                                      <fo:table-column column-width="1.8cm" column-number="2"/>

                                                                                        <fo:table-body>

                                                                                          <fo:table-row text-align="center">

                                                                                            <fo:table-cell text-align="center"
                                                                                                border-left-style="solid" border-left-width="1px">
                                                                                              <fo:block>Comisión de Administración</fo:block>
                                                                                            </fo:table-cell>

                                                                                            <fo:table-cell text-align="center"
                                                                                                border-right-style="solid" border-right-width="1px">
                                                                                              <fo:block>
                                                                                                <fo:inline>
                                                                                                  <xsl:value-of select="valorComisionOperacion"/> 
                                                                                                </fo:inline>
                                                                                              </fo:block>
                                                                                            </fo:table-cell>

                                                                                          </fo:table-row>


                                                                                        </fo:table-body>
                                                                                    </fo:table>

                                                                                  </xsl:for-each>
                                                                                    
                                                                                </fo:block>
                                                                                
                                                                                <fo:block color="#7D94D7">
                                                                      
                                                                                    <fo:table table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                                        
                                                                                        <fo:table-column column-width="5.4cm" column-number="1"/>
                                                                                        <fo:table-column column-width="2cm" column-number="2"/>
                                                                                        
                                                                                        <fo:table-body>
                                                                                            <!-- Pie: Valor Total -->
                                                                                            <fo:table-row background-color="#DBE5F1" text-align="center">
                                                                                          
                                                                                                <fo:table-cell text-align="left" font-weight="bold" 
                                                                                                        border-left-style="solid" border-left-width="1px"
                                                                                                        border-top-style="solid" border-top-width="1px"
                                                                                                        border-bottom-style="solid" border-bottom-width="1px"
                                                                                                        padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                                    <fo:block>Valor Cuota UF</fo:block>
                                                                                                </fo:table-cell>
                                                                                                <fo:table-cell text-align="center" font-weight="bold"
                                                                                                        border-right-style="solid" border-right-width="1px"
                                                                                                        border-top-style="solid" border-top-width="1px"
                                                                                                        border-bottom-style="solid" border-bottom-width="1px"
                                                                                                        padding-top="2px" padding-left="2px" padding-right="2px" padding-bottom="2px">
                                                                                                    <fo:block>
                                                                                                        <fo:inline>
                                                                                                            <xsl:value-of select="valorTotal"/>
                                                                                                        </fo:inline>
                                                                                                    </fo:block>
                                                                                                </fo:table-cell>
                                                                                                
                                                                                            </fo:table-row>
                                                                                            <!-- Pie: Valor Total -->
                                                                                        </fo:table-body>
                                                                                    </fo:table>
                                                                                </fo:block>
                                                                                
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        <!-- Cuerpo: Detalle Crédito -->
                                                                        
                                                                    </fo:table-body>
                                                                </fo:table>
                                                                
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 1 -->
                                                        
                                                        <!-- INICIO: Columna 2 -->
                                                        <fo:table-cell> 
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 2 -->
                                                        
                                                        <!-- INICIO: Columna 3 -->
                                                        <fo:table-cell> 
                                                            <fo:block color="#7D94D7">
                                                                      
                                                                <fo:table space-before="" table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                    
                                                                    <fo:table-column column-width="2cm" column-number="1"/>
                                                                    <fo:table-column column-width="2.8cm" column-number="2"/>
                                                                    <fo:table-column column-width="2.7cm" column-number="3"/>
                                                                    
                                                                    <xsl:for-each select="vencimientoCAEF03/element">
                                                                        <fo:table-body>
                                                                            <fo:table-row>
                                                                                <fo:table-cell text-align="center"
                                                                                        border-left-style="solid" border-left-width="1px"
                                                                                        border-bottom-style="solid" border-bottom-width="1px">
                                                                                    <fo:block>
                                                                                        <fo:inline>
                                                                                            <xsl:value-of select="fechaValorPagarOperaciones"/>
                                                                                        </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                
                                                                                <fo:table-cell text-align="center"
                                                                                        border-left-style="solid" border-left-width="1px"
                                                                                        border-bottom-style="solid" border-bottom-width="1px">
                                                                                    <fo:block>$ 
                                                                                        <fo:inline>
                                                                                            <xsl:value-of select="ufValorPagarOperaciones"/>
                                                                                        </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                                
                                                                                <fo:table-cell text-align="center"
                                                                                        border-left-style="solid" border-left-width="1px"
                                                                                        border-bottom-style="solid" border-bottom-width="1px"
                                                                                        border-right-style="solid" border-right-width="1px">
                                                                                    <fo:block>$ 
                                                                                        <fo:inline>
                                                                                            <xsl:value-of select="pesosValorPagarOperaciones"/>
                                                                                        </fo:inline>
                                                                                    </fo:block>
                                                                                </fo:table-cell>
                                                                            </fo:table-row>
                                                                        </fo:table-body>
                                                                    </xsl:for-each>
                                                                </fo:table>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 3 -->
                                                        
                                                        <!-- INICIO: Columna 4 -->
                                                        <fo:table-cell> 
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 4 -->
                                                        
                                                        <!-- INICIO: Columna 5 -->
                                                        <fo:table-cell> 
                                                            <fo:block color="#7D94D7">
                                                                      
                                                                <fo:table space-before="" table-layout="fixed" width="100%" border-collapse="collapse">
                                                                                                                                    
                                                                    <fo:table-column column-width="2.7cm" column-number="1"/>
                                                                    <fo:table-column column-width="1.7cm" column-number="2"/>
                                                                    <fo:table-column column-width="0.1cm" column-number="3"/>
                                                                    
                                                                    <fo:table-body>
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-left-style="solid" text-align="left">
                                                                                <fo:block> 
                                                                                    Total UF:
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            <fo:table-cell>
                                                                              <fo:block>
                                                                                <fo:table font-size="8pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                                                                  <fo:table-column />
                                                                                  <fo:table-body>
                                                                                    <fo:table-row display-align="center">
                                                                                      <fo:table-cell border="solid" padding-before="5pt">
                                                                                        <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                                                            <fo:inline>
                                                                                                <xsl:value-of select="valorTotal"/>
                                                                                            </fo:inline>
                                                                                        </fo:block>
                                                                                      </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                  </fo:table-body>
                                                                                </fo:table>
                                                                              </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            <fo:table-cell border-right-style="solid" text-align="left">
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        
                                                                        <fo:table-row>
                                                                            <fo:table-cell border-left-style="solid" text-align="left">
                                                                                <fo:block> 
                                                                                    Fecha Pago:
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            <fo:table-cell>
                                                                              <fo:block>
                                                                                <fo:table font-size="8pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                                                                  <fo:table-column />
                                                                                  <fo:table-body>
                                                                                    <fo:table-row display-align="center">
                                                                                      <fo:table-cell border="solid" padding-before="5pt">
                                                                                        <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                                                        </fo:block>
                                                                                      </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                  </fo:table-body>
                                                                                </fo:table>
                                                                              </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            <fo:table-cell border-right-style="solid" text-align="left">
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        
                                                                        <fo:table-row>
                                                                            <fo:table-cell text-align="left"
                                                                                 border-left-style="solid"
                                                                                 border-bottom-style="solid">
                                                                                <fo:block>
                                                                                    Total $:
                                                                                </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            <fo:table-cell border-bottom-style="solid">
                                                                              <fo:block>
                                                                                <fo:table font-size="8pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                                                                  <fo:table-column />
                                                                                  <fo:table-body>
                                                                                    <fo:table-row display-align="center">
                                                                                      <fo:table-cell border="solid" padding-before="5pt">
                                                                                        <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                                                        </fo:block>
                                                                                      </fo:table-cell>
                                                                                    </fo:table-row>
                                                                                  </fo:table-body>
                                                                                </fo:table>
                                                                              </fo:block>
                                                                            </fo:table-cell>
                                                                            
                                                                            <fo:table-cell text-align="left"
                                                                                 border-right-style="solid"
                                                                                 border-bottom-style="solid">
                                                                            </fo:table-cell>
                                                                        </fo:table-row>
                                                                        
                                                                    </fo:table-body>
                                                                </fo:table>
                                                            </fo:block>
                                                            <fo:block color="#7D94D7" space-before="2mm">
                                                                 <fo:external-graphic width="1.376in" height="1.370in" vertical-align="left">
                                                                     <xsl:attribute name="src">
                                                                         <xsl:value-of select="timbreFirma"/>
                                                                     </xsl:attribute>
                                                                 </fo:external-graphic>
                                                            </fo:block>
                                                        </fo:table-cell>
                                                        <!-- FIN: Columna 5 -->
                                                    
                                                    </fo:table-row>
                                                    
                                                </fo:table-body>
                                            </fo:table>         
                                            <!-- FIN: Datos de Vencimiento y Oficina -->

                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block> 
                    <fo:block id="theEnd"/>     
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>