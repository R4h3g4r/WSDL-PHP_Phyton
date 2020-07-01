<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0in" margin-bottom="0in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="certificadoDeudaLey20130">
      <fo:root>
        <xsl:copy-of select="$fo:layout-master-set" />
        <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
          <fo:flow flow-name="xsl-region-body">
            <fo:block>
              <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="1pt">
                <fo:table-column column-width="proportional-column-width(18)"/>
                <fo:table-column column-width="proportional-column-width(62)"/>
                <fo:table-column column-width="proportional-column-width(20)"/>
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="left" space-before="5mm">
                        <fo:external-graphic width="1.330in" height="0.777in" vertical-align="left">
                          <xsl:attribute name="src">
                            <xsl:value-of select="rutaImagen"/>
                          </xsl:attribute>
                        </fo:external-graphic>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="40pt" border-style="solid" border-width="1pt" 
                        border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" 
                        padding-before="3pt" padding-after="3pt" text-align="start">
                      <fo:block text-align="center">
                        <fo:inline font-size="14pt" font-weight="bold" border-bottom-style="solid" border-bottom-width="1px">
                           CERTIFICADO DE DEUDA LEY N° 20.130
                        </fo:inline>
                      </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                      <fo:block text-align="right">
                        <fo:inline font-size="9pt">
                           Certificado N° <xsl:value-of select="iicCertificado"/> / <xsl:value-of select="codOficina"/>
                        </fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                <fo:table-column />
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                      <fo:block text-align="justify">
                        <fo:inline font-size="10pt">
                            Conforme a lo establecido en la Ley N° 20.130 de fecha 7 de Noviembre 2006, en relación a la exención de impuestos
                            establecida en el N° 17 del artículo 24° DL 3.475 de 1980, Banco de Crédito e Inversiones, certifica que:
                        </fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>                        
              <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                <fo:table-column />
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                      <fo:block text-align="center">
                        <fo:inline font-size="10pt" font-weight="bold">
                            <xsl:value-of select="nombreCliente"/>
                        </fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
              <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                <fo:table-column />
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                      <fo:block text-align="justify">
                        <fo:inline font-size="10pt">
                            RUT: <fo:inline font-weight="bold"><xsl:value-of select="rutCliente"/></fo:inline>, es deudor en esta institución de la siguiente operación de crédito, la que se encuentra en la siguiente situación:
                        </fo:inline>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
                        
              <!-- Detalle de Credito Original -->
              <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                <fo:table-column />
                <fo:table-body>
                  <fo:table-row>
                    <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                      <fo:block font-size="10pt" font-weight="bold" border-bottom-style="solid" border-bottom-width="1px">
                          Detalle de Crédito Original:
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>     
              <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
                <fo:table-column />
                <fo:table-body>
                  <fo:table-row>  
                    <fo:table-cell>
                      <fo:block text-align="center" space-before="5mm"
                                border-top-style="solid" border-top-width="2px"
                                border-bottom-style="solid" border-bottom-width="2px"
                                border-left-style="solid" border-left-width="2px"
                                border-right-style="solid" border-right-width="2px">  
                        <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                          <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                          <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                  N° de Operación:
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="nroOperacion"/>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                  Fecha de Otorgamiento del Crédito:
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="fechaOtorgamiento"/>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                  Fecha Vencimiento del Crédito:
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="fechaVencimiento"/>
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="left" border-right-style="solid" border-right-width="2px">
                                  Monto de Capital del Crédito: <fo:inline font-size="10pt" text-align="right" font-weight="bold"><xsl:value-of select="monedaCredito"/></fo:inline>    
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell> 
                                <fo:block font-size="10pt" text-align="right"> 
                                  <xsl:value-of select="montoCapitalCredito"/>
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
                    
              <!-- Liquidación del Crédito -->
            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block font-size="10pt" font-weight="bold" border-bottom-style="solid" border-bottom-width="1px">
                      Liquidación del Crédito:
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>     
            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>  
                  <fo:table-cell>
                    <fo:block text-align="center" space-before="5mm"
                              border-top-style="solid" border-top-width="2px"
                              border-bottom-style="solid" border-bottom-width="2px"
                              border-left-style="solid" border-left-width="2px"
                              border-right-style="solid" border-right-width="2px">  
                      <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                        <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                        <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                Monto de Capital:
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                            <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                              <xsl:value-of select="montoCapital"/>
                            </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                            <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                              Monto de Intereses:
                            </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                <xsl:value-of select="montoIntereses"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                Comisiones de Prepago u otras:
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                <xsl:value-of select="comisionesPrepago"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                Total acogido al artículo 24 N° 17 DL 3475:    
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                <xsl:value-of select="totalDL3475"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                Intereses morosos:    
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                <xsl:value-of select="interesesMorosos"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" border-bottom-style="solid" border-bottom-width="1px" border-right-style="solid" border-right-width="2px">
                                Total suma a pagar a la fecha de esta liquidación:    
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" border-bottom-style="solid" border-bottom-width="1px"> 
                                <xsl:value-of select="totalAPagar"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" border-right-style="solid" border-right-width="2px">
                                Fecha de la liquidación:    
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right"> 
                                <xsl:value-of select="fechaLiquidacion"/>
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
                    
            <!-- Impuesto DL 3.475 pagado -->
            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block font-size="10pt" font-weight="bold" border-bottom-style="solid" border-bottom-width="1px">
                      Impuesto DL 3.475 pagado:
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>     
                        
          <xsl:for-each select="carril/element">
            <fo:table width="100%" space-before.optimum="1pt" space-after.optimum="2pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>  
                  <fo:table-cell>
                    <fo:block text-align="center" space-before="5mm"
                              border-top-style="solid" border-top-width="2px"
                              border-bottom-style="solid" border-bottom-width="2px"
                              border-left-style="solid" border-left-width="2px"
                              border-right-style="solid" border-right-width="2px">  
                      <fo:table space-before="" space-after="" table-layout="fixed" width="100%" border-collapse="collapse">                                                                  
                        <fo:table-column column-width="proportional-column-width(65)" column-number="1"/>
                        <fo:table-column column-width="proportional-column-width(35)" column-number="2"/>
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" 
                                    border-bottom-style="solid" border-bottom-width="1px"
                                    border-right-style="solid" border-right-width="2px">
                                  Tasa aplicada:
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" 
                                    border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="tasaAplicada"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" 
                                    border-bottom-style="solid" border-bottom-width="1px"
                                    border-right-style="solid" border-right-width="2px">
                                  Base Imponible:
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" 
                                    border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="baseImponible"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" 
                                    border-bottom-style="solid" border-bottom-width="1px"
                                    border-right-style="solid" border-right-width="2px">
                                  (*) Monto Impuesto pagado:
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" 
                                    border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="montoImpuestoPagado"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left" 
                                    border-bottom-style="solid" border-bottom-width="1px"
                                    border-right-style="solid" border-right-width="2px">
                                  Folio F-24 en que consta el pago del Impuesto:    
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right" 
                                    border-bottom-style="solid" border-bottom-width="1px"> 
                                  <xsl:value-of select="folio"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <fo:table-row>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="left"
                                    border-right-style="solid" border-right-width="2px">
                                  Norma de exención total o parcial (sí corresponde):    
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell> 
                              <fo:block font-size="10pt" text-align="right"> 
                                  <xsl:value-of select="normaExcepcion"/>
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
          </xsl:for-each>
          
          <!--   ACA, SE VALIDA QUE GLOSA SE DEBE MOSTRAR  -->
          <xsl:if test="parrafo = 'parrafo1'">
            <fo:table width="100%" padding-top="15pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block text-align="justify">
                      <fo:inline font-size="10pt">
                        El Impuesto de Timbres y Estampillas que grava la operación a que se refiere el presente Certificado, se encuentra debidamente informado al Servicio de Impuestos Internos, conforme a lo dispuesto en la Resolución Exenta SII N° 02 del 04 de enero del 2005, modificada por Resolución Exenta SII N° 87 del 01 de agosto del 2007 del mencionado Servicio.
                        El interesado podrá solicitar el cuadro de pago de la operación a que se refiere el presente Certificado en cualquiera de nuestras sucursales.
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </xsl:if>
          
          <xsl:if test="parrafo = 'parrafo2'">
            <fo:table width="100%" padding-top="15pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block text-align="justify">
                      <fo:inline font-size="10pt">
                          El monto de capital e intereses a pagar está referido al <xsl:value-of select="fechaActual"/> (<xsl:value-of select="glsFechaActual"/>).
                          Se deja constancia que el monto de capital e intereses indicado en el presente Certificado,  queda condicionado a la variación que pueda experimentar la deuda insoluta entre la fecha de emisión del Certificado y la de su vigencia.
                          El interesado podrá solicitar el cuadro de pago de la operación a que se refiere el presente Certificado en cualquiera de nuestras sucursales.
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </xsl:if>

          <xsl:if test="parrafo = 'parrafo3'">
            <fo:table width="100%" padding-top="15pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block text-align="justify">
                      <fo:inline font-size="10pt">
                          Dado que el Impuesto de Timbres y Estampillas del crédito al que se refiere este Certificado, no se ha enterado aún en arcas fiscales, el número de folio estará disponible en la fecha en que se pague por parte de nuestro Banco, el impuesto correspondiente a ese período.
                          El interesado podrá solicitar el cuadro de pago de la operación a que se refiere el presente Certificado en cualquiera de nuestras sucursales.
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </xsl:if>

          <xsl:if test="parrafo = 'parrafo4'">
            <fo:table width="100%" padding-top="15pt">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border-style="solid" border-width="1pt" border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block text-align="justify">
                      <fo:inline font-size="10pt">
                          El monto de capital e intereses a pagar está referido al <xsl:value-of select="fechaActual"/> (<xsl:value-of select="glsFechaActual"/>).
                          Se deja constancia que el monto de capital e intereses indicado en el presente Certificado, queda condicionado a la variación que pueda experimentar la deuda insoluta entre la fecha de emisión del Certificado y la de su vigencia. El interesado podrá solicitar el cuadro de pago de la operación a que se refiere el presente Certificado en cualquiera de nuestras sucursales.
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </xsl:if>

            <fo:table width="100%">
              <fo:table-column />
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell padding-top="30pt" border-style="solid" border-width="1pt" 
                      border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" 
                      padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block>
                      <fo:inline font-size="12pt" font-weight="bold">
                          Fecha de emisión del Certificado:
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell padding-top="30pt" border-style="solid" border-width="1pt" 
                      border-color="white" display-align="after" padding-start="3pt" padding-end="3pt" 
                      padding-before="3pt" padding-after="3pt" text-align="start">
                    <fo:block text-align="center" border-top-style="solid" border-top-width="1px"
                            border-bottom-style="solid" border-bottom-width="1px"
                            border-left-style="solid" border-left-width="1px"
                            border-right-style="solid" border-right-width="1px">
                      <fo:inline font-size="10pt" font-weight="bold">
                          <xsl:value-of select="fechaActual"/>
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>       

            <fo:table width="100%">
              <fo:table-column />
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell padding-top="30pt" padding-left="0pt" padding-right="0pt" padding-bottom="0pt"
                      border-style="solid" border-width="1pt" border-color="white" display-align="after" text-align="start">
                    <fo:block text-align="center">
                      <fo:inline font-size="6pt" font-weight="bold">
                          _________________________________________________________
                      </fo:inline>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                  <fo:table-cell padding-top="0pt" padding-left="0pt" padding-right="0pt" padding-bottom="0pt"
                      border-style="solid" border-width="1pt" border-color="white" display-align="after" text-align="start">
                    <fo:block text-align="center">
                      <fo:inline font-size="10pt" font-weight="bold">
                          Banco de Crédito e Inversiones
                      </fo:inline>
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
