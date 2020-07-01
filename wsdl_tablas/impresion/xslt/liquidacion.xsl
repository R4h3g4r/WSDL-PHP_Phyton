<?xml version="1.0" encoding="iso-8859-1"?>

<!-- Copyright(c) BEE Consultorias y Sistemas - All Rights Reserved -->

<!-- <== version: 2007/01/09 11:20 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

  <xsl:import href="date.xsl" />
  <xsl:decimal-format name="rut" grouping-separator='.' />

  <xsl:template match="liquidacion">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="liquidacion" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="10mm" margin-left="12.5mm" margin-right="12.5mm">
                    <fo:region-body/>
                    <!-- <fo:region-before extent="3cm"/> -->
                </fo:simple-page-master>

            </fo:layout-master-set>
          
          <!-- INICIO: Datos generales del cliente -->
          
          <fo:page-sequence master-reference="liquidacion">
                <fo:flow flow-name="xsl-region-body">
                    <!-- border="1pt solid black" -->
          <!--
          <fo:block text-align="left">
            <fo:external-graphic src="C:/BEE/fop-0.20.5/normaliza.jpg"/>
          </fo:block>
          -->
          
          <fo:block  font-family="Times" font-size="8pt" line-height="4mm">
          <fo:table table-layout="fixed" width="190.9mm">
                            <fo:table-column column-width="30mm" />
                            <fo:table-column column-width="100mm" />
                            <fo:table-column column-width="30mm"/>
                            <fo:table-body>
                                <fo:table-row height="4mm">
                                      <fo:table-cell border-left="0.5pt solid black" border-top="0.5pt solid black" border-bottom="0.5pt solid black">
                                          <fo:block text-align="center" font-weight="bold" font-size="10pt"></fo:block>
                                      </fo:table-cell>
                                      <fo:table-cell border-top="0.5pt solid black" border-bottom="0.5pt solid black">
                                          <fo:block text-align="center" font-weight="bold" font-size="10pt">LIQUIDACION INICIO COBRANZA JUDICIAL</fo:block>
                                      </fo:table-cell>
                                      <fo:table-cell border-right="0.5pt solid black" border-top="0.5pt solid black" border-bottom="0.5pt solid black">
                                          <fo:block text-align="right" font-weight="bold" font-size="10pt">N� <xsl:value-of select="numeroCobranzaJudicial" /></fo:block>
                                      </fo:table-cell>
                                </fo:table-row>
                          </fo:table-body>
           </fo:table>
           </fo:block>
          
          <fo:block  font-family="Times" font-size="8pt" line-height="4mm">
            <fo:table table-layout="fixed" width="190.9mm">
              <fo:table-column/>
              <fo:table-body>
                <fo:table-row height="4mm">
                  <fo:table-cell  border="0.5pt solid black">
                    <fo:block text-align="left">

                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>

                <fo:table-row height="4mm">
                  <fo:table-cell  border="0.5pt solid black">
                    <fo:block text-align="left" font-weight="bold" padding-left="1mm">
                      Datos Generales
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>

                <fo:table-row height="4mm">
                  <fo:table-cell>
                    <fo:block text-align="left">
                      <fo:table table-layout="fixed" width="190.9mm">
                        <fo:table-column column-width="47.725mm"/>
                        <fo:table-column column-width="47.725mm"/>
                        <fo:table-column column-width="47.725mm"/>
                        <fo:table-column column-width="47.725mm"/>

                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Nombre Cliente
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="nombreCliente" />
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                IdP Cliente
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block text-align="right">
                                <xsl:value-of select='format-number(idPClienterut,"###.###.###","rut")' /> - <xsl:value-of select="idPClientedv" />
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>

                          <fo:table-row>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Oficina
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="oficina" />
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Ejecutivo
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="ejecutivo" />
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>

                          <fo:table-row>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Banca
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="banca" />
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Actividad Econ�mica
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="actividadEconomica" />
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>

                          <fo:table-row>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Segmento
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="segmento" />
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                Abogado
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                <xsl:value-of select="abogado" />
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </fo:table-body>
                      </fo:table>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                
                <fo:table-row height="4mm">
                  <fo:table-cell  border="0.5pt solid black">
                    <fo:block text-align="left">

                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>

              </fo:table-body>
            </fo:table>
          </fo:block>

                
        <!-- FIN: Datos generales del cliente -->
          
        <!-- INICIO: DETALLE DE LAS OPERACIONES DE CREDITOS  -->

          <xsl:for-each select="detalleOperaciones/detalleOperacion">
            <fo:block  font-family="Times" font-size="8pt" line-height="4mm">
              <fo:table table-layout="fixed" width="190.9mm">
                <fo:table-column/>
                <fo:table-body>

                  <fo:table-row height="4mm">
                    <fo:table-cell  border="0.5pt solid black">
                      <fo:block text-align="center" font-weight="bold" padding-left="1mm">
                        DETALLE DE LAS OPERACIONES DE CREDITO
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row height="4mm">
                    <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                      <fo:block text-align="left" font-weight="bold">
                        Detalle de la operaci�n N�mero: <xsl:value-of select="detalledelaOperacionNumero" />
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  
                  <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                        <fo:block text-align="left" font-weight="bold">
                          N�mero Original: <xsl:value-of select="operacionCol" />
                        </fo:block>
                      </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row height="4mm">
                    <fo:table-cell>
                      <fo:block text-align="left">
                        <fo:table table-layout="fixed" width="190.9mm">
                          <fo:table-column column-width="47.725mm"/>
                          <fo:table-column column-width="47.725mm"/>
                          <fo:table-column column-width="47.725mm"/>
                          <fo:table-column column-width="47.725mm"/>


                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Tipo Subtipo
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="tipoSubtipoOpe" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Estado Operaci�n
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="estadoOperacion" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Oficina
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="oficina" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Moneda
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="monedaOpe" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Colocaci�n
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="colocacion" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Primer Vencimiento Original
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="fecPrimerVencOriginal" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Primer Vencimiento Impago
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="fecPrimerVencImpago" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Ultimo Vencimiento
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="fecUltimoVenc" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Situaci�n Contable
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="situacionContable" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Tasa/Spread Pactado
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="tasaSpreadPactado" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Cuotas Canceladas
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="cuotasCanceladas" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Cuotas Impagas
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="cuotasImpagas" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row height="4mm">
                    <fo:table-cell  border="0.5pt solid black">
                      <fo:block>

                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row height="4mm">
                    <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                      <fo:block text-align="left" font-weight="bold">
                        Deuda
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>

                  <fo:table-row height="4mm">
                    <fo:table-cell>
                      <fo:block text-align="left">
                        <fo:table table-layout="fixed" width="190.9mm">
                          <fo:table-column column-width="63.9515mm"/>
                          <fo:table-column column-width="31.4985mm"/>
                          <fo:table-column column-width="47.725mm"/>
                          <fo:table-column column-width="47.725mm"/>

                          <fo:table-body>
                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Capital Original M/O
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="capitalOriginalMO" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Saldo Insoluto $
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="saldoInsoluto" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Capital Original $
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="capitalOriginal" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Inter�s Vencimiento Impago $
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="interesVencimientoImpago" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <fo:table-row>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>

                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block font-weight="bold">
                                  Total Impago $
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right" font-weight="bold">
                                  <xsl:value-of select="totalImpago" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  
                  <!-- Deudores del Cr�dito -->
                  
                  <xsl:if test="deudoresCredito/deudorCredito">
                  <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black">
                        <fo:block>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                        <fo:block text-align="left" font-weight="bold">
                          Deudores del Cr�dito
                        </fo:block>
                      </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row height="4mm">
                    <fo:table-cell>
                      <fo:block text-align="left">
                        <fo:table table-layout="fixed" width="190.9mm">
                          <fo:table-column column-width="63.9515mm"/>
                          <fo:table-column column-width="79.2235mm"/>
                          <fo:table-column column-width="47.725mm"/>

                          <fo:table-body>
                            <fo:table-row font-weight="bold">
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  IdP Cliente
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Nombre Cliente
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  Tipo Deudor
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <xsl:for-each select="deudoresCredito/deudorCredito">
                            <fo:table-row height="4mm">
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select='format-number(idPClienterut,"###.###.###","rut")' /> - <xsl:value-of select="idPClientedv" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="nombreCliente" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                <fo:block>
                                  <xsl:value-of select="tipoDeudor" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            </xsl:for-each>

                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  </xsl:if>
                  
                  <!-- Fin Deudores del Cr�dito -->

                  <!-- Garant�as Espec�ficas -->
                  
                  <xsl:if test="garantiasEspecificas/garantiaEspecifica">
                  <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black">
                        <fo:block>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                        <fo:block text-align="left" font-weight="bold">
                          Garant�as Especificas
                        </fo:block>
                      </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row height="4mm">
                    <fo:table-cell>
                      <fo:block text-align="left">
                        <fo:table table-layout="fixed" width="190.9mm">
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-column/>

                          <fo:table-body>
                            <fo:table-row font-weight="bold">
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Id. Garant�a
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Tipo Subtipo
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Real
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Moneda
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  V. Comercial
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  V. Liquidaci�n
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Ponderado
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>

                            <xsl:for-each select="garantiasEspecificas/garantiaEspecifica">
                            <fo:table-row height="4mm">
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="idGarantia" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="tipoSubtipoEsp" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="real" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="monedaEsp" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="valorComercial" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="valorLiquidacion" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="valorPonderado" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                            </xsl:for-each>

                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  </xsl:if>
                  
                  <!-- Fin Garant�as Espec�ficas -->
                  
                  <!-- Documentaci�n Adjunta -->
                  
                  <xsl:if test="documentacionAdjunta/numeroDocumentos">
                  <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black">
                        <fo:block>
                        </fo:block>
                      </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                        <fo:block text-align="left" font-weight="bold">
                          Documentaci�n Adjunta
                        </fo:block>
                      </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row height="4mm">
                    <fo:table-cell>
                      <fo:block text-align="left">
                        <fo:table table-layout="fixed" width="190.9mm">
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-column/>
                          <fo:table-body>
                            <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Tipo
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Estado
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Motivo
                                    </fo:block>
                                  </fo:table-cell>
                            </fo:table-row>
                            <xsl:for-each select="documentacionAdjunta/documentoAdjunto">
                              <fo:table-row height="4mm">
                                <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                  <fo:block text-align="left">
                                    <xsl:value-of select="tipo" />
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                  <fo:block text-align="left">
                                    <xsl:value-of select="estado" />
                                  </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                  <fo:block text-align="left">
                                    <xsl:value-of select="motivo" />
                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>
                            </xsl:for-each>                            
                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                     <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                       <fo:block text-align="right" font-weight="bold">
                         Total N�mero Documentos: <xsl:value-of select="documentacionAdjunta/numeroDocumentos" />
                       </fo:block>
                     </fo:table-cell>
                  </fo:table-row>
                  </xsl:if>
                  
                  <!-- Fin Documentaci�n Adjunta -->
                  
                  <!-- Calendario de Pagos -->
                  
                  <xsl:if test="planPagos/planPago">
                  <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black">
                        <fo:block>
                        </fo:block>
                      </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row height="4mm">
                      <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                        <fo:block text-align="center" font-weight="bold">
                          CALENDARIO DE PAGOS
                        </fo:block>
                      </fo:table-cell>
                  </fo:table-row>
                  <fo:table-row>
                    <fo:table-cell>
                      <fo:block text-align="left">
                        <fo:table table-layout="fixed" width="190.9mm">
                          <fo:table-column column-width="19.09mm"/>
                          <fo:table-column column-width="38.18mm"/>
                          <fo:table-column column-width="38.18mm"/>
                          <fo:table-column column-width="38.18mm"/>
                          <fo:table-column column-width="19.09mm"/>
                          <fo:table-column column-width="38.18mm"/>
                          <fo:table-body>
                            <fo:table-row font-weight="bold">
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  N�mero
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Vencimiento
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Amortizaci�n
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Inter�s
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Comisi�n
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  Cuota
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                        <xsl:for-each select="planPagos/planPago">
                            <fo:table-row height="4mm">
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="numero" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="vencimiento" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="amortizacion" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="interes" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="comision" />
                                </fo:block>
                              </fo:table-cell>
                              <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                <fo:block text-align="right">
                                  <xsl:value-of select="cuota" />
                                </fo:block>
                              </fo:table-cell>
                            </fo:table-row>
                        </xsl:for-each>
                          </fo:table-body>
                        </fo:table>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                  </xsl:if>
                  
                  <!-- Fin Calendario de Pagos -->
                  <fo:table-row height="4mm">
                    <fo:table-cell  border="0.5pt solid black">
                      <fo:block>
                      </fo:block>
                    </fo:table-cell>
                  </fo:table-row>
                </fo:table-body>
              </fo:table>
            </fo:block>
     
      </xsl:for-each>
      
      <!-- FIN: DETALLE DE LAS OPERACIONES DE CREDITOS  -->
      
      <!-- INICIO: GESTIONES COBRANZA PREJUDICIAL y DETALLE DIRECCIONES CLIENTE  -->
      
                <fo:block  font-family="Times" font-size="8pt" line-height="4mm">
                  <fo:table table-layout="fixed" width="190.9mm">
                    <fo:table-column/>
                    <fo:table-body>
                      
                      <xsl:if test="gestionesCobranza/gestionCobranza">
                      <fo:table-row height="4mm">
                              <fo:table-cell  border="0.5pt solid black">
                                <fo:block text-align="center">
                                  GESTIONES COBRANZA PREJUDICIAL
                                </fo:block>
                              </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">
      
                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
      
                              <fo:table-body>
                                <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Fecha
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Hora
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Gestor
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Gesti�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Contacto
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Respuesta
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Observaciones
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                <xsl:for-each select="gestionesCobranza/gestionCobranza">
                                <fo:table-row height="4mm">
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="fecha" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="hora" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      <xsl:value-of select="gestor" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      <xsl:value-of select="gestion" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      <xsl:value-of select="contacto" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      <xsl:value-of select="respuestagestion" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      <xsl:value-of select="observaciones" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                </xsl:for-each>
                              </fo:table-body>
                            </fo:table>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:if>
                
                <xsl:if test="direccionesCliente/direccionCliente">
                <fo:table-row height="4mm">
                   <fo:table-cell  border="0.5pt solid black">
                      <fo:block text-align="center" font-weight="bold">
                         DETALLE DIRECCIONES DEL CLIENTE
                      </fo:block>
                   </fo:table-cell>
                </fo:table-row>
                
                <fo:table-row height="4mm">
                  <fo:table-cell  border="0.5pt solid black">
                    <fo:block text-align="left" font-weight="bold" padding-left="1mm">
                      Direcciones
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                <fo:table-row height="4mm">
                  <fo:table-cell>
                    <fo:block text-align="left">
                    
                      <fo:table table-layout="fixed"  width="190.9mm">
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        <fo:table-column/>
                        
                        <fo:table-body>
                          <fo:table-row font-weight="bold">
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                 Relaci�n
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                 Tipo
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                 Direcci�n
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                 Comuna
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                 Estado
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                              <fo:block text-align="right">
                                 Tel�fono
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black"  padding-right="1mm">
                              <fo:block text-align="right">
                                 C. Postal
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black"  padding-right="1mm">
                              <fo:block text-align="right">
                                 Fecha Verif.
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                          <xsl:for-each select="direccionesCliente/direccionCliente">
                          
                          <fo:table-row height="4mm">
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block text-align="right">
                                <xsl:value-of select="relacion" />
                                <fo:leader leader-pattern="space" leader-length="1mm"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                  <xsl:value-of select="tipodir" />
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                 <xsl:value-of select="direccion" />
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                              <fo:block>
                                                  <xsl:value-of select="comunadir" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                <xsl:value-of select="estadodir" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                <xsl:value-of select="telefono" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black"  padding-right="1mm">
                                    <fo:block text-align="right">
                                <xsl:value-of select="codPostal" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black"  padding-right="1mm">
                                    <fo:block text-align="right">
                                <xsl:value-of select="fechaVer" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
      
                                </xsl:for-each>
                              </fo:table-body>
                            </fo:table>
      
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:if>
      
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">
      
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                    </fo:table-body>
                  </fo:table>
                </fo:block>
      
      
        <!-- FIN: GESTIONES COBRANZA PREJUDICIAL y DETALLE DIRECCIONES CLIENTE  -->
      
      <!-- INICIO: DETALLE DE LAS GARANTIAS  -->
      
      
                <fo:block  font-family="Times" font-size="8pt" line-height="4mm">
                  <fo:table table-layout="fixed" width="190.9mm">
                    <fo:table-column/>
                    <fo:table-body>
                      
                      <xsl:for-each select="detalleGarantiasGenerales/detalleGarantia">
                      
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="center" font-weight="bold" padding-left="1mm">
                            DETALLE DE LAS GARANTIAS
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                          <fo:block text-align="left" font-weight="bold">
                            Detalle de la Garant�a N�mero: <xsl:value-of select="numero" />
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell>
                          <fo:block text-align="left">
                            <fo:table table-layout="fixed" width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>

                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Tipo Subtipo
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="tipoSubtipo" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Oficina
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left" >
                                      <xsl:value-of select="oficinagar" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Moneda:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="monedagar" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Descripci�n:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="descripcion" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Rol:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="rol" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Ejecutivo:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="ejecutivogar" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Ingreso:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="ingreso" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Constituci�n:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="constitucion" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Vencimiento:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="vencimiento" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Limite:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="limite" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Estado Garant�a:
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="estadoGarantia" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Proceso Juridico
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="procesoJuridico" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Prop. Clte. Banco
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="propClteBanco" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      IdP Propietario
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select='format-number(idPPropietarioRut,"###.###.###","rut")' /> - <xsl:value-of select="idPPropietarioDv" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Nombre Propietario
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="nombrePropietario" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                              </fo:table-body>
                            </fo:table>
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                          <fo:block text-align="left" font-weight="bold">
                            Ubicaci�n Garantia
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell>
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>

                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Direcci�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="direccionUbi" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      N�mero
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="numero" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Otros
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="otros" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Comuna
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="comuna" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Agente Aduana
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="agenteAduana" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Almac�n/ Filial
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="almacenFilial" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Ubicaci�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="ubicacion" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Dep�sito Prenda
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="depositoPrenda" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>

                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">

                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>


                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      
                      <xsl:if test="deudoresGarantia/deudorGarantia">
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                       <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                          <fo:block text-align="left" font-weight="bold">
                            Deudores Garant�a
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>

                              <fo:table-body>
                                <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      IdP Cliente
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Nombre
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Monto L�mite
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      % L�mite
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <xsl:for-each select="deudoresGarantia/deudorGarantia">

                                  <fo:table-row height="4mm">
                                    <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                      <fo:block text-align="left">
                                        <xsl:value-of select='format-number(clienteRut,"###.###.###","rut")' /> - <xsl:value-of select="clienteDv" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="nombreDeudor" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="montoLimite" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="porcLimite" />
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>

                                </xsl:for-each>

                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:if>

                      <xsl:if test="valoresGarantia/valorGarantia">
                      <fo:table-row height="4mm">
                                <fo:table-cell  border="0.5pt solid black">
                                  <fo:block text-align="left">

                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row height="4mm">
                                <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                                  <fo:block text-align="left" font-weight="bold">
                                    Valores Garant�a
                                  </fo:block>
                                </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>


                              <fo:table-body>
                                <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      N� Aval�o
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      A. Parcial
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Valor Tasaci�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Gtias. Facultades
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Tasaci�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Tasador
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <xsl:for-each select="valoresGarantia/valorGarantia">
                                  <fo:table-row height="4mm">
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="numeroAvaluo" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                      <fo:block text-align="left">
                                        <xsl:value-of select="avaluoParcial" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="valorTasacion" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="gtiasFacultades" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="tasacion" />
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                      <fo:block text-align="left">
                                        <xsl:value-of select="tasador" />
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>

                                </xsl:for-each>
                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:if>

                      <xsl:if test="operacionesEspecificas/operacionEspecifica">
                      <fo:table-row height="4mm">
                         <fo:table-cell  border="0.5pt solid black">
                            <fo:block text-align="left">
                            </fo:block>
                         </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row height="4mm">
                         <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                            <fo:block text-align="left" font-weight="bold">
                               Operaci�n Especifica
                            </fo:block>
                         </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>

                              <fo:table-body>
                                <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Especificaci�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Id. Operaci�n
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Vencimiento
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Moneda L�mite
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Monto L�mite
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      % L�mite
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <xsl:for-each select="operacionesEspecificas/operacionEspecifica">
                                  <fo:table-row height="4mm">
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="especificacion" />

                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="garIdOperacion" />

                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="vencimiento" />

                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="monedaLimite" />

                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="montoLimite" />

                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                      <fo:block text-align="right">
                                        <xsl:value-of select="porcLimite" />

                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </xsl:for-each>

                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:if>

                      <xsl:if test="acreedoresPreferenciales/acreedorPreferencial">
                      <fo:table-row height="4mm">
                                <fo:table-cell  border="0.5pt solid black">
                                  <fo:block text-align="left">

                                  </fo:block>
                                </fo:table-cell>
                              </fo:table-row>

                              <fo:table-row height="4mm">
                                <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                                  <fo:block text-align="left" font-weight="bold">
                                    Acreedores Preferenciales
                                  </fo:block>
                                </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>

                              <fo:table-body>
                                <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Prioridad
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      IdP Cliente
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Nombre Acreedor
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Banco Acreedor
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      Cliente Banco
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block>
                                      M/P
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      Valor Acreencia
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <xsl:for-each select="acreedoresPreferenciales/acreedorPreferencial">

                                <fo:table-row height="4mm">
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="prioridad" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select='format-number(idPAcreedorRut,"###.###.###","rut")' /> - <xsl:value-of select="idPAcreedorDv" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="nombreAcreedor" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="bancoAcreedor" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="clienteBanco" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="montoPorc" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="valorAcreencia" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                </xsl:for-each>
                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:if>

                      <xsl:for-each select="datosLegalesGarantia/datoLegalGarantia">
                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>


                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                          <fo:block text-align="left" font-weight="bold">
                            Datos Legales Garant�a (Acreedor Preferencial Prioridad)
                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>
                              <fo:table-column/>

                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Abogado
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="abogado" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Notaria
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="notaria" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Instrumento
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="instrumento" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Rol Impuesto Internos
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="rolImpuestoInternos" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Registro en
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="registro" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Estado
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="estado" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Localidad Registro
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="localidadRegistro" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Comuna
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="comuna" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Id. Fiscal�a
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="idFiscalia" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Escritura
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      <xsl:value-of select="escritura" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block>

                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block>

                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block>

                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell>
                                    <fo:block>

                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>


                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column column-width="95.45mm"/>
                              <fo:table-column column-width="95.45mm"/>

                              <fo:table-body>
                                <fo:table-row font-weight="bold">
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Registro de Hipotecas Y Grav�menes
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Registro de Prohibiciones
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                            <fo:table table-layout="fixed"  width="190.9mm">
                              <fo:table-column column-width="47.725mm"/>
                              <fo:table-column column-width="47.725mm"/>
                              <fo:table-column column-width="47.725mm"/>
                              <fo:table-column column-width="47.725mm"/>

                              <fo:table-body>
                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Fojas
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="fojasHip" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      Fojas
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="fojasProh" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      N�mero
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="numeroHip" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      N�mero
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="numeroProh" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      A�o
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="anoHip" />
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                    <fo:block text-align="left">
                                      A�o
                                    </fo:block>
                                  </fo:table-cell>
                                  <fo:table-cell border="0.5pt solid black" padding-right="1mm">
                                    <fo:block text-align="right">
                                      <xsl:value-of select="anoProh" />
                                    </fo:block>
                                  </fo:table-cell>
                                </fo:table-row>

                              </fo:table-body>
                            </fo:table>

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>
                      </xsl:for-each>

                      <fo:table-row height="4mm">
                        <fo:table-cell  border="0.5pt solid black">
                          <fo:block text-align="left">

                          </fo:block>
                        </fo:table-cell>
                      </fo:table-row>

                      </xsl:for-each>

                    </fo:table-body>
                  </fo:table>
                </fo:block>
                
                <!-- FIN: DETALLE DE LAS GARANTIAS  -->
     
                <!-- INICIO: COMENTARIO y FIRMAS  -->
           
                     <fo:block  font-family="Times" font-size="8pt" line-height="4mm">
                       <fo:table table-layout="fixed" width="190.9mm">
                         <fo:table-column/>
                         <fo:table-body>
                           
                           <fo:table-row height="4mm">
                               <fo:table-cell  border="0.5pt solid black" padding-left="1mm">
                                 <fo:block text-align="center" font-weight="bold">
                                   COMENTARIOS
                                 </fo:block>
                               </fo:table-cell>
                             </fo:table-row>

                             <fo:table-row height="20mm">
                               <fo:table-cell  border="0.5pt solid black">
                                 <fo:block>
                                        <xsl:value-of select="comentarios" />
                                 </fo:block>
                               </fo:table-cell>
                             </fo:table-row>

                             <fo:table-row>
                               <fo:table-cell>
                                 <fo:block text-align="left">
                                   <fo:table table-layout="fixed" width="190.9mm">
                                     <fo:table-column column-width="95.45mm"/>
                                     <fo:table-column column-width="95.45mm"/>

                                     <fo:table-body>
                                       <fo:table-row height="24mm">
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">

                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">

                                           </fo:block>
                                         </fo:table-cell>

                                       </fo:table-row>
                                     </fo:table-body>
                                   </fo:table>
                                 </fo:block>
                               </fo:table-cell>
                             </fo:table-row>

                             <fo:table-row>
                               <fo:table-cell>
                                 <fo:block text-align="left">
                                   <fo:table table-layout="fixed" width="190.9mm">
                                     <fo:table-column column-width="95.45mm"/>
                                     <fo:table-column column-width="95.45mm"/>

                                     <fo:table-body>
                                       <fo:table-row>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Firma / Timbre Jefe de Operaciones
                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Firma / Timbre DNDM
                                           </fo:block>
                                         </fo:table-cell>

                                       </fo:table-row>

                                       <fo:table-row>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Fecha: <xsl:value-of select="fechaHoy" />
                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Fecha: <xsl:value-of select="fechaHoy" />
                                           </fo:block>
                                         </fo:table-cell>

                                       </fo:table-row>

                                     </fo:table-body>
                                   </fo:table>
                                 </fo:block>
                               </fo:table-cell>
                             </fo:table-row>

                             <fo:table-row>
                               <fo:table-cell>
                                 <fo:block text-align="left">
                                   <fo:table table-layout="fixed" width="190.9mm">
                                     <fo:table-column column-width="95.45mm"/>
                                     <fo:table-column column-width="95.45mm"/>

                                     <fo:table-body>
                                       <fo:table-row height="24mm">
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">

                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">

                                           </fo:block>
                                         </fo:table-cell>

                                       </fo:table-row>
                                     </fo:table-body>
                                   </fo:table>
                                 </fo:block>
                               </fo:table-cell>
                             </fo:table-row>

                             <fo:table-row>
                               <fo:table-cell>
                                 <fo:block text-align="left">
                                   <fo:table table-layout="fixed" width="190.9mm">
                                     <fo:table-column column-width="95.45mm"/>
                                     <fo:table-column column-width="95.45mm"/>

                                     <fo:table-body>
                                       <fo:table-row>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Firma / Timbre Jefe de Oficina
                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Firma / Timbre Abogado
                                           </fo:block>
                                         </fo:table-cell>

                                       </fo:table-row>
                                       <fo:table-row>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Fecha: <xsl:value-of select="fechaHoy" />
                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Nombre Abogado: <xsl:value-of select="nombreAbogado" />
                                           </fo:block>
                                         </fo:table-cell>
                                       </fo:table-row>
                                       <fo:table-row>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">

                                           </fo:block>
                                         </fo:table-cell>
                                         <fo:table-cell border="0.5pt solid black" padding-left="1mm">
                                           <fo:block text-align="left">
                                             Fecha Recepci�n Abogado: <xsl:value-of select="fechaHoy" />
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
           
        <!-- INICIO: COMENTARIO y FIRMAS  -->
      
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
